" FZF keymaps (requires Plug 'junegunn/fzf.vim')
" To make sure fzf ignores the files in .gitignore, put this in your .zshrc:
" export FZF_DEFAULT_COMMAND='rg --files --hidden --ignore-file .gitignore'

" Apply the active background to every fzf.vim file preview.
let g:fzf_vim = get(g:, 'fzf_vim', {})
let g:fzf_vim.preview_bash = expand('~/.vim/bin/fzf-preview-bash')

function! s:SyncPreviewBackground() abort
  let $FZF_VIM_PREVIEW_BACKGROUND = &background
endfunction

augroup FzfPreviewBackground
  autocmd!
  autocmd VimEnter * call <SID>SyncPreviewBackground()
  autocmd ColorScheme * call <SID>SyncPreviewBackground()
  autocmd OptionSet background call <SID>SyncPreviewBackground()
augroup END
call s:SyncPreviewBackground()

" Keep the earlier command names as aliases for the standard fzf pickers.
command! -bang -nargs=? -complete=dir FzfFiles call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=* FzfRg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case -- ' . fzf#shellescape(<q-args>), fzf#vim#with_preview(), <bang>0)

" Files
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fo :History<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fq :copen<CR>    " Shows errors. Also :clist
nnoremap <leader>fh :Helptags<CR>

" Grep current string
nnoremap <leader>fs :Rg <C-r><C-w><CR>

" Grep input string (fzf prompt)
nnoremap <leader>fg :Rg<Space>

" Grep for current file name (without extension)
nnoremap <leader>fc :execute 'Rg ' . expand('%:t:r')<CR>

" Find files in your Vim config
nnoremap <leader>fi :Files ~/.vim<CR>
