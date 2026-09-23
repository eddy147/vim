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

function! s:PlantumlCommand(file, format)
  if executable('plantuml')
    return 'plantuml -t' . a:format . ' ' . shellescape(a:file)
  endif

  if executable('docker')
    let l:dir = fnamemodify(a:file, ':h')
    let l:name = fnamemodify(a:file, ':t')
    return 'docker run --rm -v ' . shellescape(l:dir) . ':/workspace -w /workspace plantuml/plantuml -t' . a:format . ' ' . shellescape(l:name)
  endif

  return ''
endfunction

function! s:PlantumlExport(format)
  let l:file = expand('%:p')

  if empty(l:file)
    echohl ErrorMsg | echom 'PlantUML: no file in current buffer.' | echohl None
    return
  endif

  let l:cmd = s:PlantumlCommand(l:file, a:format)

  if empty(l:cmd)
    echohl ErrorMsg | echom 'PlantUML: install `plantuml` or Docker.' | echohl None
    return
  endif

  call system(l:cmd)

  if v:shell_error
    echohl ErrorMsg | echom 'PlantUML export failed.' | echohl None
    return
  endif

  echom 'PlantUML exported: ' . fnamemodify(l:file, ':r') . '.' . a:format
endfunction

function! s:PlantumlPreview()
  call s:PlantumlExport('png')

  if v:shell_error
    return
  endif

  let l:image = expand('%:p:r') . '.png'

  if !filereadable(l:image)
    echohl ErrorMsg | echom 'PlantUML: preview image not found.' | echohl None
    return
  endif

  if !executable('xdg-open')
    echohl ErrorMsg | echom 'PlantUML: install xdg-open to preview.' | echohl None
    return
  endif

  call system('xdg-open ' . shellescape(l:image) . ' >/dev/null 2>&1 &')
  echom 'PlantUML preview opened: ' . l:image
endfunction

command! PlantumlPng call <SID>PlantumlExport('png')
command! PlantumlSvg call <SID>PlantumlExport('svg')
command! PlantumlPreview call <SID>PlantumlPreview()

augroup PlantumlKeybinds
  autocmd!
  autocmd FileType plantuml nnoremap <buffer> <leader>up :PlantumlPng<CR>
  autocmd FileType plantuml nnoremap <buffer> <leader>us :PlantumlSvg<CR>
  autocmd FileType plantuml nnoremap <buffer> <leader>uv :PlantumlPreview<CR>
augroup END
