set laststatus=2
let g:lightline = {
      \ 'colorscheme' : 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'LightlineGitBranch',
      \   'filename': 'LightlineFilename'
      \ }
      \ }

function! LightlineGitBranch()
  if exists('*FugitiveHead')
    let l:head = FugitiveHead()
    if l:head !=# ''
      return l:head
    endif
  endif

  let l:start = expand('%:p:h')
  if l:start ==# ''
    let l:start = getcwd()
  endif

  let l:gitdir = finddir('.git', l:start . ';')
  if !empty(l:gitdir)
    let l:gitdir = fnamemodify(l:gitdir, ':p')
  else
    let l:gitfile = findfile('.git', l:start . ';')
    if empty(l:gitfile)
      return ''
    endif

    let l:lines = readfile(l:gitfile, '', 1)
    if empty(l:lines) || l:lines[0] !~# '^gitdir:\s*'
      return ''
    endif

    let l:target = substitute(l:lines[0], '^gitdir:\s*', '', '')
    if fnamemodify(l:target, ':p') ==# l:target
      let l:gitdir = l:target
    else
      let l:gitdir = fnamemodify(fnamemodify(l:gitfile, ':h') . '/' . l:target, ':p')
    endif
  endif

  let l:headfile = l:gitdir . '/HEAD'
  if !filereadable(l:headfile)
    return ''
  endif

  let l:head = get(readfile(l:headfile, '', 1), 0, '')
  if l:head ==# ''
    return ''
  endif

  if l:head =~# '^ref:\s*'
    let l:ref = substitute(l:head, '^ref:\s*', '', '')
    return fnamemodify(l:ref, ':t')
  endif

  return strpart(l:head, 0, 7)
endfunction

function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction
