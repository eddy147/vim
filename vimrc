" Detect Vim9 before Vim's normal filetype detection runs.
function! s:detect_vim9() abort
  for l:line in getline(1, '$')
    if l:line =~# '^\s*\%("\|$\)'
      continue
    endif
    if l:line =~# '^\s*vim9script\>'
      setfiletype vim.vim9
    endif
    break
  endfor
endfunction

augroup DetectVim9
  autocmd!
  autocmd BufRead,BufNewFile *.vim ++nested call <SID>detect_vim9()
augroup END

source ~/.vim/options.vim
source ~/.vim/keybinds.vim
source ~/.vim/case.vim
" Keep Vim-signify's deleted-line marker compact: `_2` means two deleted lines.
let g:signify_sign_show_count = 0
source ~/.vim/plugins.vim
source ~/.vim/colors.vim
source ~/.vim/git.vim
source ~/.vim/fzf.vim
source ~/.vim/lightline.vim
source ~/.vim/lsp.vim
