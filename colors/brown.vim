hi clear
set background=dark
let g:colors_name = 'brown'

let s:t_Co = has('gui_running') ? 16777216 : str2nr(&t_Co)
let s:tgc = has('termguicolors') && &termguicolors && !has('gui_running')

hi! link CurSearch IncSearch
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign FoldColumn
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link MessageWindow PMenu
hi! link PopupNotification Normal
hi! link PreInsert NonText
hi! link StatusLineTerm Statusline
hi! link StatusLineTermNC StatuslineNC
hi! link TabPanel Normal
hi! link TabPanelFill Normal
hi! link Terminal Normal
hi! link markdownCodeDelimiter Special
hi! link markdownHeadingDelimiter Type
hi! link markdownHeadingRule Type
hi! link markdownId String
hi! link markdownIdDeclaration Constant
hi! link markdownLinkText String
hi! link markdownListMarker PreProc
hi! link markdownUrl Underlined

let g:terminal_ansi_colors = ['#000000', '#d7005f', '#00af5f', '#d78700', '#0087d7', '#d787d7', '#00afaf', '#d0d0d0', '#767676', '#ff5f87', '#00d75f', '#ffaf00', '#00afff', '#ff87ff', '#00d7d7', '#ffffff']

hi Normal guifg=#d0d0d0 guibg=#3D2412 guisp=NONE gui=NONE ctermfg=252 ctermbg=brown cterm=NONE term=NONE
hi Added guifg=#00af5f guibg=NONE guisp=NONE gui=NONE ctermfg=35 ctermbg=NONE cterm=NONE term=NONE
hi Changed guifg=#0087d7 guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE term=NONE
hi ColorColumn guifg=NONE guibg=#303030 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=reverse
hi Comment guifg=#767676 guibg=NONE guisp=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE term=bold
hi Conceal guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=NONE
hi Constant guifg=#00d75f guibg=NONE guisp=NONE gui=NONE ctermfg=41 ctermbg=NONE cterm=NONE term=NONE
hi CursorColumn guifg=NONE guibg=#262626 guisp=NONE gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE term=NONE
hi CursorLine guifg=NONE guibg=#262626 guisp=NONE gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE term=underline
hi CursorLineNr guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold term=bold
hi DiffAdd guifg=NONE guibg=#273923 guisp=NONE gui=NONE ctermfg=252 ctermbg=22 cterm=NONE term=reverse
hi DiffChange guifg=NONE guibg=#2f2f2f guisp=NONE gui=NONE ctermfg=252 ctermbg=236 cterm=NONE term=NONE
hi DiffDelete guifg=#767676 guibg=#2f1f1a guisp=NONE gui=NONE ctermfg=243 ctermbg=52 cterm=NONE term=reverse
hi DiffText guifg=NONE guibg=#0f4f4f guisp=NONE gui=NONE ctermfg=252 ctermbg=23 cterm=NONE term=reverse
hi Directory guifg=#00afff guibg=NONE guisp=NONE gui=bold ctermfg=39 ctermbg=NONE cterm=bold term=NONE
hi EndOfBuffer guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=NONE
hi Error guifg=#d7005f guibg=#ffffff guisp=NONE gui=reverse ctermfg=161 ctermbg=231 cterm=reverse term=bold,reverse
hi ErrorMsg guifg=#d7005f guibg=#ffffff guisp=NONE gui=reverse ctermfg=161 ctermbg=231 cterm=reverse term=bold,reverse
hi FoldColumn guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=NONE
hi Folded guifg=#767676 guibg=#303030 guisp=NONE gui=NONE ctermfg=243 ctermbg=236 cterm=NONE term=NONE
hi Identifier guifg=#ff87ff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE term=NONE
hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=NONE
hi IncSearch guifg=NONE guibg=#7f531f guisp=NONE gui=NONE ctermfg=214 ctermbg=16 cterm=reverse term=bold,reverse,underline
hi LineNr guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=NONE
hi MatchParen guifg=#ff00af guibg=NONE guisp=NONE gui=bold ctermfg=199 ctermbg=NONE cterm=bold term=bold,underline
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold term=bold
hi MoreMsg guifg=#00d75f guibg=NONE guisp=NONE gui=NONE ctermfg=41 ctermbg=NONE cterm=NONE term=NONE
hi NonText guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=NONE
hi Pmenu guifg=NONE guibg=#303030 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=reverse
hi PmenuBorder guifg=#767676 guibg=#303030 guisp=NONE gui=NONE ctermfg=243 ctermbg=236 cterm=NONE term=NONE
hi PmenuExtra guifg=#767676 guibg=#303030 guisp=NONE gui=NONE ctermfg=243 ctermbg=236 cterm=NONE term=reverse
hi PmenuExtraSel guifg=#767676 guibg=#585858 guisp=NONE gui=NONE ctermfg=243 ctermbg=240 cterm=NONE term=NONE
hi PmenuKind guifg=#00afaf guibg=#303030 guisp=NONE gui=NONE ctermfg=37 ctermbg=236 cterm=NONE term=reverse
hi PmenuKindSel guifg=#00afaf guibg=#585858 guisp=NONE gui=NONE ctermfg=37 ctermbg=240 cterm=NONE term=NONE
hi PmenuMatch guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold term=bold
hi PmenuMatchSel guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold term=bold
hi PmenuSbar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=reverse
hi PmenuSel guifg=NONE guibg=#585858 guisp=NONE gui=NONE ctermfg=NONE ctermbg=240 cterm=NONE term=bold
hi PmenuShadow guifg=#767676 guibg=#121212 guisp=NONE gui=NONE ctermfg=243 ctermbg=233 cterm=NONE term=NONE
hi PmenuThumb guifg=NONE guibg=#d0d0d0 guisp=NONE gui=NONE ctermfg=NONE ctermbg=252 cterm=NONE term=NONE
hi Popup guifg=NONE guibg=#303030 guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE term=NONE
hi PopupBorder guifg=#767676 guibg=#303030 guisp=NONE gui=NONE ctermfg=243 ctermbg=236 cterm=NONE term=NONE
hi PopupTitle guifg=#9e9e9e guibg=#303030 guisp=NONE gui=bold ctermfg=247 ctermbg=236 cterm=bold term=bold
hi PreProc guifg=#00d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=44 ctermbg=NONE cterm=NONE term=NONE
hi Question guifg=#ff87ff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE term=standout
hi QuickFixLine guifg=NONE guibg=#4f2f4f guisp=NONE gui=NONE ctermfg=252 ctermbg=53 cterm=NONE term=NONE
hi Removed guifg=#d7005f guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE term=NONE
hi Search guifg=NONE guibg=#3a4a3a guisp=NONE gui=NONE ctermfg=41 ctermbg=16 cterm=reverse term=reverse
hi SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=reverse
hi Special guifg=#875fff guibg=NONE guisp=NONE gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE term=NONE
hi SpecialKey guifg=#585858 guibg=NONE guisp=NONE gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE term=bold
hi SpellBad guifg=NONE guibg=NONE guisp=#ff5f87 gui=undercurl ctermfg=161 ctermbg=NONE cterm=underline term=underline
hi SpellCap guifg=NONE guibg=NONE guisp=#00afaf gui=undercurl ctermfg=37 ctermbg=NONE cterm=underline term=underline
hi SpellLocal guifg=NONE guibg=NONE guisp=#00af5f gui=undercurl ctermfg=41 ctermbg=NONE cterm=underline term=underline
hi SpellRare guifg=NONE guibg=NONE guisp=#ff87ff gui=undercurl ctermfg=213 ctermbg=NONE cterm=underline term=underline
hi Statement guifg=#00afff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE term=NONE
hi StatusLine guifg=#9e9e9e guibg=#000000 guisp=NONE gui=bold,reverse ctermfg=247 ctermbg=16 cterm=bold,reverse term=bold,reverse
hi StatusLineNC guifg=#767676 guibg=#000000 guisp=NONE gui=reverse ctermfg=243 ctermbg=16 cterm=reverse term=bold,underline
hi TabLine guifg=#000000 guibg=#767676 guisp=NONE gui=NONE ctermfg=16 ctermbg=243 cterm=NONE term=bold,underline
hi TabLineFill guifg=#000000 guibg=#767676 guisp=NONE gui=NONE ctermfg=16 ctermbg=243 cterm=NONE term=NONE
hi TabLineSel guifg=#000000 guibg=#9e9e9e guisp=NONE gui=bold ctermfg=16 ctermbg=247 cterm=bold term=bold,reverse
hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold term=NONE
hi TitleBar guifg=#ffffff guibg=#3c3c3c guisp=NONE gui=NONE ctermfg=231 ctermbg=237 cterm=NONE term=NONE
hi TitleBarNC guifg=#767676 guibg=#2c2c2c guisp=NONE gui=NONE ctermfg=243 ctermbg=236 cterm=NONE term=NONE
hi Todo guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold term=bold,reverse
hi ToolbarButton guifg=#000000 guibg=#00afaf guisp=NONE gui=NONE ctermfg=16 ctermbg=37 cterm=NONE term=bold,reverse
hi ToolbarLine guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE term=reverse
hi Type guifg=#ffaf00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE term=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline term=underline
hi VertSplit guifg=#9e9e9e guibg=#9e9e9e guisp=NONE gui=NONE ctermfg=247 ctermbg=247 cterm=NONE term=NONE
hi VertSplitNC guifg=#767676 guibg=#767676 guisp=NONE gui=NONE ctermfg=243 ctermbg=243 cterm=NONE term=NONE
hi Visual guifg=NONE guibg=#204060 guisp=NONE gui=NONE ctermfg=81 ctermbg=16 cterm=reverse term=reverse
hi VisualNOS guifg=#000000 guibg=#00afff guisp=NONE gui=NONE ctermfg=16 ctermbg=39 cterm=NONE term=NONE
hi WarningMsg guifg=#ffaf00 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE term=standout
hi WildMenu guifg=#000000 guibg=#ffaf00 guisp=NONE gui=NONE ctermfg=16 ctermbg=214 cterm=NONE term=bold
hi debugBreakpoint guifg=#00afaf guibg=NONE guisp=NONE gui=reverse ctermfg=37 ctermbg=NONE cterm=reverse term=reverse
hi debugPC guifg=#0087d7 guibg=NONE guisp=NONE gui=reverse ctermfg=32 ctermbg=NONE cterm=reverse term=reverse
hi htmlH1 guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=231 ctermbg=NONE cterm=bold term=bold

if has('gui_running') || s:tgc
  hi Cursor guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi lCursor guifg=#000000 guibg=#ff5fff guisp=NONE gui=NONE cterm=NONE
endif

if s:tgc || s:t_Co >= 256
  if s:tgc
    hi IncSearch cterm=NONE
    hi QuickFixLine cterm=NONE
    hi Search cterm=NONE
    hi Visual cterm=NONE
  endif
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=grey ctermbg=black cterm=NONE
  hi Added ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Changed ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Comment ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=grey ctermbg=NONE cterm=NONE
  hi Constant ctermfg=green ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=black ctermbg=yellow cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=white ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=black ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=black ctermbg=darkgray cterm=NONE
  hi DiffDelete ctermfg=black ctermbg=darkred cterm=NONE
  hi DiffText ctermfg=black ctermbg=darkcyan cterm=NONE
  hi Directory ctermfg=blue ctermbg=NONE cterm=bold
  hi EndOfBuffer ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi Error ctermfg=darkred ctermbg=white cterm=reverse
  hi ErrorMsg ctermfg=darkred ctermbg=white cterm=reverse
  hi FoldColumn ctermfg=grey ctermbg=NONE cterm=NONE
  hi Folded ctermfg=black ctermbg=NONE cterm=bold
  hi Identifier ctermfg=magenta ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=yellow ctermbg=black cterm=reverse
  hi LineNr ctermfg=grey ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=green ctermbg=NONE cterm=NONE
  hi NonText ctermfg=grey ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=black ctermbg=grey cterm=NONE
  hi PmenuBorder ctermfg=NONE ctermbg=grey cterm=NONE
  hi PmenuExtra ctermfg=darkgrey ctermbg=grey cterm=NONE
  hi PmenuExtraSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuKind ctermfg=darkcyan ctermbg=grey cterm=NONE
  hi PmenuKindSel ctermfg=darkcyan ctermbg=darkyellow cterm=NONE
  hi PmenuMatch ctermfg=black ctermbg=grey cterm=bold
  hi PmenuMatchSel ctermfg=black ctermbg=darkyellow cterm=bold
  hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuShadow ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Popup ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PopupBorder ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PopupTitle ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi PreProc ctermfg=cyan ctermbg=NONE cterm=NONE
  hi Question ctermfg=magenta ctermbg=NONE cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=magenta cterm=NONE
  hi Removed ctermfg=darkred ctermbg=NONE cterm=NONE
  hi Search ctermfg=green ctermbg=black cterm=reverse
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkred ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=grey ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=darkcyan ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=green ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=magenta ctermbg=NONE cterm=underline
  hi Statement ctermfg=blue ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=grey ctermbg=black cterm=bold,reverse
  hi StatusLineNC ctermfg=darkgrey ctermbg=black cterm=reverse
  hi TabLine ctermfg=black ctermbg=darkgrey cterm=NONE
  hi TabLineFill ctermfg=black ctermbg=darkgrey cterm=NONE
  hi TabLineSel ctermfg=black ctermbg=grey cterm=bold
  hi Title ctermfg=NONE ctermbg=NONE cterm=bold
  hi TitleBar ctermfg=white ctermbg=black cterm=NONE
  hi TitleBarNC ctermfg=darkgrey ctermbg=black cterm=NONE
  hi Todo ctermfg=NONE ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=black ctermbg=darkcyan cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Type ctermfg=yellow ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=grey ctermbg=grey cterm=NONE
  hi VertSplitNC ctermfg=darkgrey ctermbg=darkgrey cterm=NONE
  hi Visual ctermfg=cyan ctermbg=black cterm=reverse
  hi VisualNOS ctermfg=black ctermbg=blue cterm=NONE
  hi WarningMsg ctermfg=yellow ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=yellow cterm=NONE
  hi debugBreakpoint ctermfg=darkcyan ctermbg=NONE cterm=reverse
  hi debugPC ctermfg=darkblue ctermbg=NONE cterm=reverse
  hi htmlH1 ctermfg=white ctermbg=NONE cterm=bold
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=grey ctermbg=black cterm=NONE
  hi Added ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Changed ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
  hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Constant ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=black ctermbg=NONE cterm=bold
  hi DiffAdd ctermfg=black ctermbg=darkgreen cterm=NONE
  hi DiffChange ctermfg=black ctermbg=darkblue cterm=NONE
  hi DiffDelete ctermfg=black ctermbg=darkred cterm=NONE
  hi DiffText ctermfg=black ctermbg=darkmagenta cterm=NONE
  hi Directory ctermfg=darkblue ctermbg=NONE cterm=bold
  hi EndOfBuffer ctermfg=grey ctermbg=NONE cterm=NONE
  hi Error ctermfg=grey ctermbg=darkred cterm=NONE
  hi ErrorMsg ctermfg=grey ctermbg=darkred cterm=NONE
  hi FoldColumn ctermfg=black ctermbg=NONE cterm=NONE
  hi Folded ctermfg=grey ctermbg=NONE cterm=bold
  hi Identifier ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=darkyellow ctermbg=black cterm=reverse
  hi LineNr ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi NonText ctermfg=black ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PmenuBorder ctermfg=darkgrey ctermbg=darkgrey cterm=NONE
  hi PmenuExtra ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PmenuExtraSel ctermfg=NONE ctermbg=NONE cterm=bold
  hi PmenuKind ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi PmenuKindSel ctermfg=NONE ctermbg=NONE cterm=bold
  hi PmenuMatch ctermfg=NONE ctermbg=darkred cterm=reverse
  hi PmenuMatchSel ctermfg=darkred ctermbg=NONE cterm=bold
  hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
  hi PmenuShadow ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=reverse
  hi Popup ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PopupBorder ctermfg=NONE ctermbg=NONE cterm=reverse
  hi PopupTitle ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  hi PreProc ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Question ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=darkmagenta cterm=NONE
  hi Removed ctermfg=darkred ctermbg=NONE cterm=NONE
  hi Search ctermfg=darkgreen ctermbg=black cterm=reverse
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=black ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=NONE cterm=reverse
  hi SpellCap ctermfg=darkcyan ctermbg=NONE cterm=reverse
  hi SpellLocal ctermfg=darkgreen ctermbg=black cterm=reverse
  hi SpellRare ctermfg=darkmagenta ctermbg=NONE cterm=reverse
  hi Statement ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=grey ctermbg=black cterm=bold,reverse
  hi StatusLineNC ctermfg=black ctermbg=grey cterm=NONE
  hi TabLine ctermfg=black ctermbg=grey cterm=NONE
  hi TabLineFill ctermfg=grey ctermbg=grey cterm=NONE
  hi TabLineSel ctermfg=grey ctermbg=black cterm=bold,reverse
  hi Title ctermfg=NONE ctermbg=NONE cterm=bold
  hi TitleBar ctermfg=white ctermbg=black cterm=NONE
  hi TitleBarNC ctermfg=darkgrey ctermbg=black cterm=NONE
  hi Todo ctermfg=NONE ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=darkcyan ctermbg=black cterm=bold,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Type ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=grey ctermbg=grey cterm=NONE
  hi VertSplitNC ctermfg=grey ctermbg=grey cterm=NONE
  hi Visual ctermfg=darkblue ctermbg=black cterm=reverse
  hi VisualNOS ctermfg=black ctermbg=darkblue cterm=NONE
  hi WarningMsg ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkyellow cterm=NONE
  hi debugBreakpoint ctermfg=darkcyan ctermbg=NONE cterm=reverse
  hi debugPC ctermfg=darkblue ctermbg=NONE cterm=reverse
  hi htmlH1 ctermfg=white ctermbg=NONE cterm=bold
  finish
endif

if s:t_Co >= 0
  hi CurSearch term=reverse
  hi Cursor term=reverse
  hi CursorIM term=NONE
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi StatusLineTerm term=bold,reverse
  hi StatusLineTermNC term=bold,underline
  hi Terminal term=NONE
  finish
endif


endif
