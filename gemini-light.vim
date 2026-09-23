hi clear

if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'gemini-light'

let s:p = {
      \ 'bg': '#292A35',
      \ 'fg': '#F6F6F5',
      \ 'selection': '#7C7F8A',
      \ 'comment': '#70747f',
      \ 'red': '#DD6E6B',
      \ 'orange': '#FDC38E',
      \ 'yellow': '#E8EDA2',
      \ 'green': '#87E58E',
      \ 'purple': '#BAA0E8',
      \ 'cyan': '#A7DFEF',
      \ 'blue': '#A7DFEF',
      \ 'pink': '#E48CC1',
      \ 'bright_red': '#E1837F',
      \ 'bright_green': '#97EDA2',
      \ 'bright_blue': '#D0B5F3',
      \ 'menu': '#21222C',
      \ 'visual': '#3E4452',
      \ 'nontext': '#3B4048',
      \ 'white': '#F6F6F5',
      \ 'black': '#1C1C1C'
      \ }

function! s:hi(group, fg, bg, attr, sp) abort
  let l:cmd = ['highlight', a:group]
  call add(l:cmd, a:fg ==# '' ? 'guifg=NONE ctermfg=NONE' : 'guifg=' . a:fg . ' ctermfg=NONE')
  call add(l:cmd, a:bg ==# '' ? 'guibg=NONE ctermbg=NONE' : 'guibg=' . a:bg . ' ctermbg=NONE')
  if a:sp !=# ''
    call add(l:cmd, 'guisp=' . a:sp)
  endif
  call add(l:cmd, a:attr ==# '' ? 'gui=NONE cterm=NONE' : 'gui=' . a:attr . ' cterm=' . a:attr)
  execute join(l:cmd, ' ')
endfunction

function! s:link(from, to) abort
  execute 'highlight! link ' . a:from . ' ' . a:to
endfunction

call s:hi('Normal', s:p.fg, s:p.bg, '', '')
call s:hi('NormalFloat', s:p.purple, s:p.bg, '', '')
call s:hi('Comment', s:p.comment, '', '', '')
call s:hi('Constant', s:p.blue, '', '', '')
call s:hi('String', s:p.green, '', '', '')
call s:hi('Character', s:p.green, '', '', '')
call s:hi('Number', s:p.red, '', '', '')
call s:hi('Boolean', s:p.blue, '', '', '')
call s:hi('Float', s:p.red, '', '', '')
call s:hi('Identifier', s:p.blue, '', '', '')
call s:hi('Function', s:p.yellow, '', '', '')
call s:hi('Statement', s:p.purple, '', '', '')
call s:hi('Conditional', s:p.pink, '', '', '')
call s:hi('Repeat', s:p.pink, '', '', '')
call s:hi('Label', s:p.blue, '', '', '')
call s:hi('Operator', s:p.purple, '', '', '')
call s:hi('Keyword', s:p.blue, '', '', '')
call s:hi('Exception', s:p.purple, '', '', '')
call s:hi('PreProc', s:p.yellow, '', '', '')
call s:hi('Include', s:p.purple, '', '', '')
call s:hi('Define', s:p.purple, '', '', '')
call s:hi('Macro', s:p.purple, '', '', '')
call s:hi('PreCondit', s:p.blue, '', '', '')
call s:hi('Type', s:p.blue, '', '', '')
call s:hi('StorageClass', s:p.pink, '', '', '')
call s:hi('Structure', s:p.yellow, '', '', '')
call s:hi('Typedef', s:p.yellow, '', '', '')
call s:hi('Special', s:p.green, '', 'italic', '')
call s:hi('SpecialComment', s:p.comment, '', 'italic', '')
call s:hi('Underlined', s:p.blue, '', 'underline', '')
call s:hi('Error', s:p.bright_red, '', '', '')
call s:hi('Todo', s:p.purple, '', 'bold,italic', '')

call s:hi('CursorLine', '', s:p.selection, '', '')
call s:hi('CursorColumn', '', s:p.black, '', '')
call s:hi('ColorColumn', '', s:p.selection, '', '')
call s:hi('CursorLineNr', s:p.fg, '', 'bold', '')
call s:hi('LineNr', s:p.comment, '', '', '')
call s:hi('SignColumn', '', s:p.bg, '', '')
call s:hi('VertSplit', s:p.black, '', '', '')
call s:hi('WinSeparator', s:p.black, '', '', '')
call s:hi('StatusLine', s:p.white, s:p.selection, '', '')
call s:hi('StatusLineNC', s:p.comment, '', '', '')
call s:hi('Pmenu', s:p.white, s:p.menu, '', '')
call s:hi('PmenuSel', s:p.white, s:p.selection, '', '')
call s:hi('PmenuSbar', '', s:p.bg, '', '')
call s:hi('PmenuThumb', '', s:p.selection, '', '')
call s:hi('Visual', '', s:p.visual, '', '')
call s:hi('VisualNOS', s:p.visual, '', '', '')
call s:hi('Search', s:p.black, s:p.orange, '', '')
call s:hi('IncSearch', s:p.orange, s:p.comment, '', '')
call s:hi('MatchParen', s:p.fg, '', 'underline', '')
call s:hi('NonText', s:p.nontext, '', '', '')
call s:hi('Folded', s:p.comment, '', '', '')
call s:hi('Title', s:p.blue, '', '', '')
call s:hi('Directory', s:p.blue, '', '', '')
call s:hi('EndOfBuffer', s:p.bg, '', '', '')

call s:hi('DiffAdd', s:p.bg, s:p.green, '', '')
call s:hi('DiffChange', s:p.orange, '', '', '')
call s:hi('DiffDelete', s:p.red, '', '', '')
call s:hi('DiffText', s:p.comment, '', '', '')

call s:hi('ErrorMsg', s:p.bright_red, '', '', '')
call s:hi('WarningMsg', s:p.yellow, '', '', '')
call s:hi('MoreMsg', s:p.green, '', '', '')
call s:hi('Question', s:p.purple, '', '', '')

call s:hi('SpellBad', s:p.bright_red, '', 'underline', '')
call s:hi('SpellCap', s:p.yellow, '', '', '')
call s:hi('SpellLocal', s:p.yellow, '', '', '')
call s:hi('SpellRare', s:p.yellow, '', '', '')

call s:hi('markdownBold', s:p.orange, '', 'bold', '')
call s:hi('markdownItalic', s:p.yellow, '', 'italic', '')
call s:hi('markdownCode', s:p.green, '', '', '')
call s:hi('markdownCodeBlock', s:p.orange, '', '', '')
call s:hi('markdownCodeDelimiter', s:p.red, '', '', '')
call s:hi('markdownBlockquote', s:p.yellow, '', 'italic', '')
call s:hi('markdownHeadingDelimiter', s:p.red, '', '', '')
call s:hi('markdownLinkText', s:p.pink, '', '', '')
call s:hi('markdownUrl', s:p.yellow, '', 'underline', '')

call s:hi('diffAdded', s:p.green, '', '', '')
call s:hi('diffRemoved', s:p.red, '', '', '')
call s:hi('diffFile', s:p.nontext, '', '', '')
call s:hi('diffNewFile', s:p.green, '', '', '')
call s:hi('diffOldFile', s:p.red, '', '', '')

call s:link('FloatBorder', 'NormalFloat')
call s:link('WildMenu', 'PmenuSel')
call s:link('QuickFixLine', 'Search')

delfunction s:hi
delfunction s:link
unlet s:p
