let mapleader = " "

nnoremap <leader>e :Ex<CR>
nnoremap <C-p> :find 

" copy current filename to system clipboard (fallbacks to unnamed register)
function! s:CopyFilePathToClipboard()
  let l:path = expand('%:p')
  if has('clipboard')
    call setreg('+', l:path)
    call setreg('*', l:path)
  elseif executable('wl-copy')
    call system('wl-copy', l:path)
  elseif executable('xclip')
    call system('xclip -selection clipboard', l:path)
  elseif executable('pbcopy')
    call system('pbcopy', l:path)
  else
    let @" = l:path
  endif
  echo 'Copied: ' . l:path
endfunction

nnoremap <silent> <F4> :call <SID>CopyFilePathToClipboard()<CR>
nnoremap <silent> <leader>yf :call <SID>CopyFilePathToClipboard()<CR>
