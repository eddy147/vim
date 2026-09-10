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
