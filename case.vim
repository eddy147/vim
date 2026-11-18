" Convert identifier styles without changing registers or search history.
function! s:ConvertToken(token, style) abort
  let l:prefix = matchstr(a:token, '^_*')
  let l:suffix = matchstr(a:token, '_*$')
  let l:core = strpart(a:token, strlen(l:prefix),
        \ strlen(a:token) - strlen(l:prefix) - strlen(l:suffix))
  if empty(l:core)
    return a:token
  endif

  if a:style ==# 'camel'
    if l:core !~# '_'
      return a:token
    endif
    if l:core ==# toupper(l:core)
      let l:core = tolower(l:core)
    endif
    let l:core = substitute(l:core, '_\([A-Za-z0-9]\)', '\u\1', 'g')
    let l:core = tolower(strpart(l:core, 0, 1)) . strpart(l:core, 1)
  else
    if l:core !~# '\C\%([a-z0-9][A-Z]\|[A-Z][A-Z][a-z]\)'
      return a:token
    endif
    let l:core = substitute(l:core, '\C\([A-Z]\)\([A-Z][a-z]\)', '\1_\2', 'g')
    let l:core = substitute(l:core, '\C\([a-z0-9]\)\([A-Z]\)', '\1_\2', 'g')
    let l:core = tolower(l:core)
  endif

  return l:prefix . l:core . l:suffix
endfunction

function! s:ConvertText(text, style) abort
  return substitute(a:text, '[A-Za-z0-9_]\+',
        \ '\=s:ConvertToken(submatch(0), a:style)', 'g')
endfunction

function! s:ConvertWord(style) abort
  let l:text = getline('.')
  let l:cursor = col('.') - 1
  let l:offset = 0
  while l:offset < strlen(l:text)
    let [l:word, l:start, l:end] = matchstrpos(l:text, '\k\+', l:offset)
    if l:start < 0 || l:start > l:cursor
      return
    endif
    if l:cursor < l:end
      let l:converted = s:ConvertText(l:word, a:style)
      if l:converted !=# l:word
        call setline('.', strpart(l:text, 0, l:start)
              \ . l:converted . strpart(l:text, l:end))
      endif
      return
    endif
    let l:offset = l:end
  endwhile
endfunction

function! s:ConvertSelection(style) abort
  let l:regions = getregionpos(getpos("'<"), getpos("'>"),
        \ {'type': visualmode()})
  for [l:first, l:last] in l:regions
    if l:first[2] == 0 || l:last[2] == 0
      continue
    endif
    let l:text = getline(l:first[1])
    let l:start = l:first[2] - 1
    let l:end = l:last[2] - 1
    " A partially selected tab or wide character is outside the conversion.
    if l:first[3] > 0
      let l:start += strlen(matchstr(strpart(l:text, l:start), '^.'))
    endif
    if l:last[3] == 0
      let l:end += strlen(matchstr(strpart(l:text, l:end), '^.'))
    endif
    if l:end <= l:start
      continue
    endif
    let l:original = strpart(l:text, l:start, l:end - l:start)
    let l:converted = s:ConvertText(l:original, a:style)
    if l:converted !=# l:original
      call setline(l:first[1], strpart(l:text, 0, l:start)
            \ . l:converted . strpart(l:text, l:end))
    endif
  endfor
endfunction

" The Visual command-line prefix distinguishes a selection from a line range.
let s:case_visual = 0
augroup CaseConversion
  autocmd!
  autocmd CmdlineLeave : let s:case_visual = v:char ==# "\<CR>" && getcmdline() =~# "^'<,'>\\s*\\%(CamelCase\\|SnakeCase\\)\\>"
augroup END

function! s:ConvertRange(first, last, style) abort
  if s:case_visual
    let s:case_visual = 0
    call s:ConvertSelection(a:style)
  else
    for l:line in range(a:first, a:last)
      let l:text = getline(l:line)
      let l:converted = s:ConvertText(l:text, a:style)
      if l:converted !=# l:text
        call setline(l:line, l:converted)
      endif
    endfor
  endif
endfunction

command! -range CamelCase call <SID>ConvertRange(<line1>, <line2>, 'camel')
command! -range SnakeCase call <SID>ConvertRange(<line1>, <line2>, 'snake')

nnoremap <silent> <leader>cc :call <SID>ConvertWord('camel')<CR>
nnoremap <silent> <leader>cs :call <SID>ConvertWord('snake')<CR>
xnoremap <silent> <leader>cc :CamelCase<CR>
xnoremap <silent> <leader>cs :SnakeCase<CR>
