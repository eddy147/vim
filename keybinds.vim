let mapleader = " "

" File navigation
nnoremap <leader>e :Ex<CR>
nnoremap <C-p> :find 

" Copy absolute file path to system clipboard
function! s:CopyFilePathToClipboard()
  let l:path = expand('%:p')
  call setreg('+', l:path)
  call setreg('*', l:path)
  echo 'Copied: ' . l:path
endfunction

nnoremap <silent> <leader>yf :call <SID>CopyFilePathToClipboard()<CR>
nnoremap <silent> <F4>       :call <SID>CopyFilePathToClipboard()<CR>

function! s:InspectHighlightUnderCursor()
  let l:id = synID(line('.'), col('.'), 1)
  let l:syntax = synIDattr(l:id, 'name')
  let l:resolved = synIDattr(synIDtrans(l:id), 'name')

  if empty(l:syntax)
    let l:syntax = 'NONE'
  endif

  if empty(l:resolved)
    let l:resolved = 'NONE'
  endif

  echom 'syntax=' . l:syntax . ' resolved=' . l:resolved
  execute 'verbose hi ' . l:resolved
endfunction

nnoremap <silent> <leader>hi :call <SID>InspectHighlightUnderCursor()<CR>

" Buffer navigation
nnoremap <Tab>   :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap [b      :bprevious<CR>
nnoremap ]b      :bnext<CR>

" Close current buffer
nnoremap <leader>bd :bdelete<CR>

" Fuzzy buffer picker (fzf.vim)
nnoremap <leader>b :Buffers<CR>

" Replace all non-breaking spaces in the file with standard spaces
nnoremap <leader>snbsp :%s/\%u00a0/ /g<CR>

" Git diff helpers (vim-signify)
nnoremap <leader>gd :SignifyDiff<CR>
nnoremap <leader>gD :SignifyDiff!<CR>

function! s:GitBlameCurrentLine()
  let l:file = expand('%:p')

  if empty(l:file)
    echohl ErrorMsg | echom 'Git blame: no file in current buffer.' | echohl None
    return
  endif

  if !executable('git')
    echohl ErrorMsg | echom 'Git blame: `git` is not installed.' | echohl None
    return
  endif

  let l:line = line('.')
  let l:dir = fnamemodify(l:file, ':h')
  let l:name = fnamemodify(l:file, ':t')

  execute '!git -C ' . shellescape(l:dir) . ' blame -L ' . l:line . ',' . l:line . ' -- ' . shellescape(l:name)
endfunction

nnoremap <silent> <leader>gl :call <SID>GitBlameCurrentLine()<CR>

function! s:PlantumlCommand(file, format, outdir)
  let l:format_flag = ' -t' . a:format
  let l:out_flag = ' -o ' . shellescape(a:outdir)

  if executable('plantuml')
    return 'plantuml' . l:format_flag . l:out_flag . ' ' . shellescape(a:file)
  endif

  if executable('docker')
    let l:dir = fnamemodify(a:file, ':h')
    let l:name = fnamemodify(a:file, ':t')
    return 'docker run --rm -v ' . shellescape(l:dir) . ':/workspace -v /tmp:/tmp -w /workspace plantuml/plantuml' . l:format_flag . l:out_flag . ' ' . shellescape(l:name)
  endif

  return ''
endfunction

function! s:PlantumlExport(format, outdir)
  let l:file = expand('%:p')

  if empty(l:file)
    echohl ErrorMsg | echom 'PlantUML: no file in current buffer.' | echohl None
    return ''
  endif

  let l:cmd = s:PlantumlCommand(l:file, a:format, a:outdir)

  if empty(l:cmd)
    echohl ErrorMsg | echom 'PlantUML: install `plantuml` or Docker.' | echohl None
    return ''
  endif

  call system(l:cmd)

  if v:shell_error
    echohl ErrorMsg | echom 'PlantUML export failed.' | echohl None
    return ''
  endif

  " Path where PlantUML placed the file
  let l:output_file = a:outdir . '/' . fnamemodify(l:file, ':t:r') . '.' . a:format
  echom 'PlantUML exported: ' . l:output_file
  return l:output_file
endfunction

function! s:PlantumlPreview()
  " Export directly to /tmp
  let l:image = s:PlantumlExport('png', '/tmp')

  if empty(l:image) || v:shell_error
    return
  endif

  if !filereadable(l:image)
    echohl ErrorMsg | echom 'PlantUML: preview image not found in /tmp.' | echohl None
    return
  endif

  if !executable('xdg-open')
    echohl ErrorMsg | echom 'PlantUML: install xdg-open to preview.' | echohl None
    return
  endif

  call system('xdg-open ' . shellescape(l:image) . ' >/dev/null 2>&1 &')
  echom 'PlantUML preview opened: ' . l:image
endfunction

" Export commands (Exports PNG/SVG alongside the source file)
command! PlantumlPng call <SID>PlantumlExport('png', expand('%:p:h'))
command! PlantumlSvg call <SID>PlantumlExport('svg', expand('%:p:h'))

" Preview command (Always exports PNG to /tmp and opens it)
command! PlantumlPreview call <SID>PlantumlPreview()

augroup PlantumlKeybinds
  autocmd!
  autocmd FileType plantuml nnoremap <buffer> <leader>up :PlantumlPng<CR>
  autocmd FileType plantuml nnoremap <buffer> <leader>us :PlantumlSvg<CR>
  autocmd FileType plantuml nnoremap <buffer> <leader>uv :PlantumlPreview<CR>
augroup END

augroup MarkdownPreviewKeybinds
  autocmd!
  autocmd FileType markdown nnoremap <buffer> <leader>uv :MarkdownPreviewToggle<CR>
augroup END
