set termguicolors
set background=dark

" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 0

" colorscheme angr
"colorscheme PaperColor
colorscheme jellybeans
" colorscheme molokayo
" colorscheme spacecamp_lite

" Automatically adapt active line number for both light and dark themes
augroup AdaptCursorLineNr
  autocmd!
  autocmd ColorScheme * highlight CursorLineNr gui=reverse,bold cterm=reverse,bold
augroup END
