" Vesper colorscheme for Vim
" Transpiled from https://github.com/theaaronn/vesper
" Maintainer: theaaronn (Original author)

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vesper"
set background=dark
set t_Co=256

" Palette Definition
let s:bg        = "#111111"
let s:bg_alt    = "#222222"
let s:bg_light  = "#373737"
let s:fg        = "#FFFFFF"
let s:comment   = "#777755"
let s:selection = "#ebb58c"

let s:orange    = "#FF6600"
let s:peach     = "#ebb58c"
let s:yellow    = "#FFA500"
let s:light_y   = "#FFB733"

" General Editor UI
exe "hi Normal guifg=" . s:fg . " guibg=" . s:bg . " ctermbg=NONE"
exe "hi NormalFloat guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi ColorColumn guibg=" . s:bg_alt
exe "hi Cursor guifg=" . s:bg . " guibg=" . s:selection
exe "hi CursorLine guibg=" . s:bg_alt
exe "hi CursorColumn guibg=" . s:bg_alt
exe "hi LineNr guifg=" . s:comment . " guibg=" . s:bg
exe "hi CursorLineNr guifg=" . s:peach . " gui=bold"
exe "hi Directory guifg=" . s:peach
exe "hi DiffAdd guifg=#66FF66 guibg=#112b11"
exe "hi DiffChange guifg=#FFB733 guibg=#2b2211"
exe "hi DiffDelete guifg=#FF6666 guibg=#2b1111"
exe "hi DiffText guifg=#FFB733 guibg=#402211"
exe "hi ErrorMsg guifg=" . s:orange . " gui=bold"
exe "hi VertSplit guifg=" . s:bg_light . " guibg=NONE"
exe "hi WinSeparator guifg=" . s:bg_light . " guibg=NONE"
exe "hi Folded guifg=" . s:comment . " guibg=" . s:bg_alt
exe "hi FoldColumn guifg=" . s:comment
exe "hi SignColumn guifg=" . s:comment . " guibg=" . s:bg
exe "hi IncSearch guifg=" . s:bg . " guibg=" . s:peach
exe "hi Search guifg=" . s:bg . " guibg=" . s:yellow
exe "hi MatchParen guifg=" . s:yellow . " gui=bold,underline"
exe "hi ModeMsg guifg=" . s:fg . " gui=bold"
exe "hi MoreMsg guifg=" . s:yellow
exe "hi NonText guifg=" . s:comment . " guibg=" . s:bg
exe "hi Pmenu guifg=" . s:fg . " guibg=" . s:bg_alt
exe "hi PmenuSel guifg=" . s:bg . " guibg=" . s:selection
exe "hi PmenuSbar guibg=" . s:bg_alt
exe "hi PmenuThumb guibg=" . s:bg_light
exe "hi Question guifg=" . s:yellow
exe "hi SpecialKey guifg=" . s:bg_light
exe "hi StatusLine guifg=" . s:fg . " guibg=" . s:bg_alt . " gui=bold"
exe "hi StatusLineNC guifg=" . s:comment . " guibg=" . s:bg_alt . " gui=NONE"
exe "hi TabLine guifg=" . s:comment . " guibg=" . s:bg_alt . " gui=NONE"
exe "hi TabLineFill guibg=" . s:bg_alt
exe "hi TabLineSel guifg=" . s:fg . " guibg=" . s:bg
exe "hi Title guifg=" . s:yellow . " gui=bold"
exe "hi Visual guibg=" . s:selection . " guifg=" . s:bg . " gui=NONE"
exe "hi WarningMsg guifg=" . s:orange

" Syntax Highlighting
exe "hi Comment guifg=" . s:comment . " gui=italic"
exe "hi Constant guifg=" . s:peach
exe "hi String guifg=" . s:yellow
exe "hi Character guifg=" . s:yellow
exe "hi Number guifg=" . s:light_y
exe "hi Boolean guifg=" . s:peach
exe "hi Float guifg=" . s:light_y

exe "hi Identifier guifg=" . s:fg
exe "hi Function guifg=" . s:peach

exe "hi Statement guifg=" . s:orange
exe "hi Conditional guifg=" . s:orange
exe "hi Repeat guifg=" . s:orange
exe "hi Label guifg=" . s:yellow
exe "hi Operator guifg=" . s:peach
exe "hi Keyword guifg=" . s:orange
exe "hi Exception guifg=" . s:orange

exe "hi PreProc guifg=" . s:yellow
exe "hi Include guifg=" . s:yellow
exe "hi Define guifg=" . s:yellow
exe "hi Macro guifg=" . s:yellow
exe "hi PreCondit guifg=" . s:yellow

exe "hi Type guifg=" . s:peach
exe "hi StorageClass guifg=" . s:yellow
exe "hi Structure guifg=" . s:peach
exe "hi Typedef guifg=" . s:peach

exe "hi Special guifg=" . s:light_y
exe "hi SpecialChar guifg=" . s:light_y
exe "hi Tag guifg=" . s:yellow
exe "hi Delimiter guifg=" . s:fg
exe "hi SpecialComment guifg=" . s:comment . " gui=bold"
exe "hi Debug guifg=" . s:orange

exe "hi Underlined gui=underline"
exe "hi Ignore guifg=" . s:comment
exe "hi Error guifg=" . s:orange . " guibg=" . s:bg_alt
exe "hi Todo guifg=" . s:yellow . " gui=bold"

" Diagnostics / LSP
exe "hi DiagnosticError guifg=" . s:orange
exe "hi DiagnosticWarn guifg=" . s:yellow
exe "hi DiagnosticInfo guifg=" . s:peach
exe "hi DiagnosticHint guifg=" . s:yellow

" Git Sign Column Overrides (if using plugins like signcolumn/gitgutter)
exe "hi GitGutterAdd guifg=#66FF66 guibg=" . s:bg
exe "hi GitGutterChange guifg=#FFB733 guibg=" . s:bg
exe "hi GitGutterDelete guifg=#FF6666 guibg=" . s:bg
