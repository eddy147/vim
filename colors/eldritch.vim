" ======================================================================
" Eldritch Dark
" ======================================================================
" A native Vim colorscheme based on the official Eldritch theme.
" ======================================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "eldritch"
let colors_name   = "eldritch"

if !has('termguicolors')
  finish
endif

" =================================================================     
" Colors for the User Interface.
" =================================================================     

hi Cursor         guibg=#84C484  guifg=#f8f8f2  gui=none ctermbg=10 ctermfg=15
hi link CursorIM Cursor
hi Normal         guibg=#121420  guifg=#ebfafa  gui=none ctermbg=0  ctermfg=15
hi NonText        guibg=bg       guifg=#7081d0  gui=none ctermbg=8  ctermfg=12
hi Visual         guibg=#bf4f8e  guifg=#ebfafa  gui=none ctermbg=5  ctermfg=15

hi LineNr         guibg=bg       guifg=#666666  gui=none ctermbg=bg ctermfg=12
hi SignColumn     guibg=bg       guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi FoldColumn     guibg=bg       guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi CursorLine     guibg=bg                      gui=none ctermbg=bg
hi CursorLineNr   guibg=bg       guifg=#bbbbbb  gui=bold ctermbg=bg ctermfg=14
hi CursorColumn   guibg=#323449                 gui=none ctermbg=8
hi ColorColumn    guibg=#323449                 gui=none ctermbg=8

hi Directory      guibg=bg       guifg=#04d1f9  gui=none ctermbg=bg ctermfg=14

hi IncSearch      guibg=#e9f941  guifg=#121420  gui=bold ctermbg=3  ctermfg=0
hi Search         guibg=#EADDD1  guifg=#121420  gui=none ctermbg=11 ctermfg=0

hi SpecialKey     guibg=bg       guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi Titled         guibg=bg       guifg=fg       gui=none ctermbg=bg ctermfg=fg

hi ErrorMsg       guibg=bg       guifg=#f9515d  gui=none ctermbg=bg ctermfg=9
hi ModeMsg        guibg=bg       guifg=#84C484  gui=none ctermbg=bg ctermfg=10
hi link MoreMsg   ModeMsg
hi Question       guibg=bg       guifg=#66e4fd  gui=none ctermbg=bg ctermfg=14
hi link WarningMsg ErrorMsg

hi StatusLine     guibg=#04d1f9  guifg=#121420  gui=bold ctermbg=14 ctermfg=0
hi StatusLineNC   guibg=#323449  guifg=#84C484  gui=none ctermbg=8  ctermfg=10
hi VertSplit      guibg=#323449  guifg=#a48cf2  gui=none ctermbg=8  ctermfg=12

hi DiffAdd        guibg=#21222c  guifg=#84C484  gui=none ctermbg=0  ctermfg=10
hi DiffChange     guibg=#21222c  guifg=#e9f941  gui=none ctermbg=0  ctermfg=11
hi DiffDelete     guibg=#21222c  guifg=#f9515d  gui=none ctermbg=0  ctermfg=9
hi DiffText       guibg=#21222c  guifg=#EADDD1  gui=bold ctermbg=0  ctermfg=15

" Pmenu (Completion Menu)
hi Pmenu          guibg=#21222c  guifg=#ebfafa  gui=none ctermbg=0  ctermfg=15
hi PmenuSel       guibg=#04d1f9  guifg=#121420  gui=bold ctermbg=14 ctermfg=0
hi PmenuSbar      guibg=#323449                 gui=none ctermbg=8
hi PmenuThumb     guibg=#04d1f9                 gui=none ctermbg=14


" =================================================================     
" Colors for Syntax Highlighting.
" =================================================================     

hi Comment        guibg=bg       guifg=#7081d0  gui=italic  ctermbg=bg ctermfg=12

hi Constant       guibg=bg       guifg=#C484C4  gui=none    ctermbg=bg ctermfg=13
hi String         guibg=bg       guifg=#84C484  gui=none    ctermbg=bg ctermfg=10
hi Character      guibg=bg       guifg=#CFB499  gui=none    ctermbg=bg ctermfg=10
hi Number         guibg=bg       guifg=#C484C4  gui=none    ctermbg=bg ctermfg=13
hi Boolean        guibg=bg       guifg=#C484C4  gui=none    ctermbg=bg ctermfg=13
hi Float          guibg=bg       guifg=#C484C4  gui=none    ctermbg=bg ctermfg=13

hi Identifier     guibg=bg       guifg=#E8DBCF  gui=none    ctermbg=bg ctermfg=10
" hi Function       guibg=bg       guifg=#a48cf2  gui=bold    ctermbg=bg ctermfg=12
hi Function       guibg=bg       guifg=#c4a484  gui=bold    ctermbg=bg ctermfg=12
hi Statement      guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13

hi Conditional    guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13
hi Repeat         guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13
hi Label          guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13
hi Operator       guibg=bg       guifg=#04d1f9  gui=none    ctermbg=bg ctermfg=14
hi Keyword        guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13
hi Exception      guibg=bg       guifg=#f265b5  gui=none    ctermbg=bg ctermfg=13

hi PreProc        guibg=bg       guifg=#e9f941  gui=none    ctermbg=bg ctermfg=3
hi Include        guibg=bg       guifg=#CFB499  gui=none    ctermbg=bg ctermfg=3
hi link Define    Include
hi link Macro     Include
hi link PreCondit Include

hi Type           guibg=bg       guifg=#EADDD1  gui=none    ctermbg=bg ctermfg=11
hi StorageClass   guibg=bg       guifg=#EADDD1  gui=none    ctermbg=bg ctermfg=11
hi Structure      guibg=bg       guifg=#EADDD1  gui=none    ctermbg=bg ctermfg=11
hi Typedef        guibg=bg       guifg=#EADDD1  gui=none    ctermbg=bg ctermfg=11

hi Special        guibg=bg       guifg=#66e4fd  gui=none    ctermbg=bg ctermfg=14
hi SpecialChar    guibg=bg       guifg=#66e4fd  gui=none    ctermbg=bg ctermfg=14
hi Tag            guibg=bg       guifg=#66e4fd  gui=none    ctermbg=bg ctermfg=14
hi Delimiter      guibg=bg       guifg=fg       gui=none    ctermbg=bg ctermfg=fg
hi SpecialComment guibg=#323449  guifg=#7081d0  gui=none    ctermbg=8  ctermfg=12
hi Debug          guibg=bg       guifg=#f9515d  gui=none    ctermbg=bg ctermfg=9

hi Underlined     guibg=bg       guifg=#04d1f9  gui=underline ctermbg=bg ctermfg=14 cterm=underline

hi Title          guibg=bg       guifg=#ebfafa  gui=bold    ctermbg=bg ctermfg=15
hi Ignore         guibg=bg       guifg=#7081d0  gui=none    ctermbg=bg ctermfg=12
hi Error          guibg=#f9515d  guifg=#ebfafa  gui=bold    ctermbg=9  ctermfg=15
hi Todo           guibg=#323449  guifg=#e9f941  gui=bold    ctermbg=8  ctermfg=3
