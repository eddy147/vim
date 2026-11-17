" FZF keymaps (requires Plug 'junegunn/fzf.vim')
" To make sure fzf ignores the files in .gitignore, put this in your .zshrc:
" export FZF_DEFAULT_COMMAND='rg --files --hidden --ignore-file .gitignore'

function! s:Preview() abort
  let l:preview = fzf#vim#with_preview()
  if &background ==# 'light'
    let l:index = index(get(l:preview, 'options', []), '--preview')
    if l:index >= 0
      " Set the theme on the preview itself: the shell may reset BAT_THEME.
      let l:preview.options[l:index + 1] = 'env BAT_THEME=GitHub ' . l:preview.options[l:index + 1]
    endif
  endif
  return l:preview
endfunction

function! s:Grep(query, bang) abort
  let l:command = 'rg --column --line-number --no-heading --color=always --smart-case -- ' . fzf#shellescape(a:query)
  call fzf#vim#grep(l:command, s:Preview(), a:bang)
endfunction

command! -bang -nargs=? -complete=dir FzfFiles call fzf#vim#files(<q-args>, <SID>Preview(), <bang>0)
command! -bang -nargs=* Rg call <SID>Grep(<q-args>, <bang>0)
command! -bang -nargs=* FzfRg call <SID>Grep(<q-args>, <bang>0)

" Files
nnoremap <leader>ff :FzfFiles<CR>
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
nnoremap <leader>fi :FzfFiles ~/.vim<CR>
