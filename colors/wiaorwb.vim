" Name:         wiaorwb
" Description:  Light colorscheme Wo Is Afraid Of Red White Blue
" Author:       eddy147@gmail.com
" Maintainer:   eddy147@gmail.com
" URL:          https://github.com/eddy147/wiaorwb.vim
" License:      MIT
" Last Change:  2026-10-29

hi clear

if exists('syntax_on')
  syntax reset
endif

set background=light

let s:p = {
      \ 'black': '#000000',
      \ 'white': '#ffffff',
      \ 'light_grey': '#cccccc',
      \ 'very_light_grey': '#dedede',
      \ 'dark_grey': '#666666',
      \ 'very_dark_grey': '#444444',
      \ 'blue': '#cceeff',
      \ 'red': '#ffcccc',
      \ 'green': '#ccffee',
      \ 'yellow': '#ffffcc',
      \ 'purple': '#ffccff',
      \ 'fg': '#000000',
      \ 'bg': '#ffffff'
      \}

let g:colors_name = 'wiaorwb'

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
call s:hi('NormalFloat', s:p.black, s:p.yellow, '', '')
call s:hi('Comment', s:p.dark_grey, s:p.bg, '', '')
call s:hi('Constant', s:p.very_dark_grey, s:p., 'bold', '')
call s:hi('String', s:p.green, s:p.bg, '', '')
call s:hi('Character', s:p.green, s:p.bg, '', '')
call s:hi('Number', s:p.fg, s:p.yellow, '', '')



