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

" Cycle buffers with Tab / Shift-Tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Close current buffer without breaking splits
nnoremap <leader>bd :bdelete<CR>

" Cycle through open buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

" Or map to Tab / Shift-Tab
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Close current buffer without closing window layout
nnoremap <leader>bd :bdelete<CR>
