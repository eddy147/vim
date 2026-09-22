set termguicolors
set background=dark

" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 0

" colorscheme angr
"colorscheme PaperColor
colorscheme focuspoint
" colorscheme molokayo
" colorscheme spacecamp_lite

" Automatically adapt active line number for both light and dark themes
augroup AdaptCursorLineNr
  autocmd!
  autocmd ColorScheme * highlight CursorLine guibg=NONE ctermbg=NONE gui=underline cterm=underline guisp=#6f6f6f
  autocmd ColorScheme * highlight CursorLineNr guifg=#808080 ctermfg=244 gui=NONE cterm=NONE
augroup END

highlight CursorLine guibg=NONE ctermbg=NONE gui=underline cterm=underline guisp=#6f6f6f
highlight CursorLineNr guifg=#808080 ctermfg=244 gui=NONE cterm=NONE
