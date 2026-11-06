" Melange colorscheme for Vim
" Transpiled from https://github.com/savq/melange-nvim
" Maintainer: savq (Original author)

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "melange"
set background=dark
set t_Co=256

" Palette Definition
let s:bg        = "#292522"
let s:bg_alt    = "#34302C"
let s:bg_light  = "#403C37"
let s:bg_lighter= "#4C4741"
let s:fg        = "#ECE1D7"
let s:fg_alt    = "#C1A78E"
let s:comment   = "#857A70"
let s:selection = "#403730"

let s:red       = "#D47766"
let s:orange    = "#BD814D"
let s:yellow    = "#EBC06D"
let s:green     = "#85B695"
let s:blue      = "#78A89A"
let s:purple    = "#CF9BC2"

" General Editor UI
exe "hi Normal guifg=" . s:fg . " guibg=" . s:bg . " ctermbg=NONE"
exe "hi NormalFloat guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi ColorColumn guibg=" . s:bg_alt
exe "hi Cursor guifg=" . s:bg . " guibg=" . s:fg
exe "hi CursorLine guibg=" . s:bg_alt
exe "hi CursorColumn guibg=" . s:bg_alt
exe "hi LineNr guifg=" . s:comment . " guibg=" . s:bg
exe "hi CursorLineNr guifg=" . s:yellow . " gui=bold"
exe "hi Directory guifg=" . s:blue
exe "hi DiffAdd guibg=#334139"
exe "hi DiffChange guibg=#383644"
exe "hi DiffDelete guibg=#452C2E"
exe "hi DiffText guibg=#4C4436"
exe "hi ErrorMsg guifg=" . s:red . " gui=bold"
exe "hi VertSplit guifg=" . s:bg_light . " guibg=NONE"
exe "hi WinSeparator guifg=" . s:bg_light . " guibg=NONE"
exe "hi Folded guifg=" . s:comment . " guibg=" . s:bg_alt
exe "hi FoldColumn guifg=" . s:comment
exe "hi SignColumn guifg=" . s:comment . " guibg=" . s:bg
exe "hi IncSearch guifg=" . s:bg . " guibg=" . s:yellow
exe "hi Search guifg=" . s:bg . " guibg=" . s:orange
exe "hi MatchParen guifg=" . s:yellow . " gui=bold,underline"
exe "hi ModeMsg guifg=" . s:fg . " gui=bold"
exe "hi MoreMsg guifg=" . s:green
exe "hi NonText guifg=" . s:bg_lighter . " guibg=" . s:bg
exe "hi Pmenu guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi PmenuSel guifg=" . s:fg . " guibg=" . s:selection
exe "hi PmenuSbar guibg=" . s:bg_alt
exe "hi PmenuThumb guibg=" . s:bg_light
exe "hi Question guifg=" . s:yellow
exe "hi SpecialKey guifg=" . s:bg_lighter
exe "hi StatusLine guifg=" . s:fg . " guibg=" . s:bg_alt . " gui=bold"
exe "hi StatusLineNC guifg=" . s:comment . " guibg=" . s:bg_alt . " gui=NONE"
exe "hi TabLine guifg=" . s:comment . " guibg=" . s:bg_alt . " gui=NONE"
exe "hi TabLineFill guibg=" . s:bg_alt
exe "hi TabLineSel guifg=" . s:fg . " guibg=" . s:bg
exe "hi Title guifg=" . s:yellow . " gui=bold"
exe "hi Visual guibg=" . s:selection . " gui=NONE"
exe "hi WarningMsg guifg=" . s:orange

" Syntax Highlighting
exe "hi Comment guifg=" . s:comment . " gui=italic"
exe "hi Constant guifg=" . s:purple
exe "hi String guifg=" . s:green
exe "hi Character guifg=" . s:green
exe "hi Number guifg=" . s:purple
exe "hi Boolean guifg=" . s:purple
exe "hi Float guifg=" . s:purple

exe "hi Identifier guifg=" . s:fg
exe "hi Function guifg=" . s:yellow

exe "hi Statement guifg=" . s:red
exe "hi Conditional guifg=" . s:red
exe "hi Repeat guifg=" . s:red
exe "hi Label guifg=" . s:red
exe "hi Operator guifg=" . s:orange
exe "hi Keyword guifg=" . s:red
exe "hi Exception guifg=" . s:red

exe "hi PreProc guifg=" . s:orange
exe "hi Include guifg=" . s:orange
exe "hi Define guifg=" . s:orange
exe "hi Macro guifg=" . s:orange
exe "hi PreCondit guifg=" . s:orange

exe "hi Type guifg=" . s:blue
exe "hi StorageClass guifg=" . s:orange
exe "hi Structure guifg=" . s:blue
exe "hi Typedef guifg=" . s:blue

exe "hi Special guifg=" . s:yellow
exe "hi SpecialChar guifg=" . s:yellow
exe "hi Tag guifg=" . s:blue
exe "hi Delimiter guifg=" . s:fg_alt
exe "hi SpecialComment guifg=" . s:comment . " gui=bold"
exe "hi Debug guifg=" . s:red

exe "hi Underlined gui=underline"
exe "hi Ignore guifg=" . s:bg_light
exe "hi Error guifg=" . s:red . " guibg=" . s:bg_alt
exe "hi Todo guifg=" . s:yellow . " gui=bold"

" Diagnostics / LSP
exe "hi DiagnosticError guifg=" . s:red
exe "hi DiagnosticWarn guifg=" . s:orange
exe "hi DiagnosticInfo guifg=" . s:blue
exe "hi DiagnosticHint guifg=" . s:green
