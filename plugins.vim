" plugins.vim - Dead simple plugin manager
" Just source this file in your vimrc
let s:plugin_dir = expand('~/.vim/plugged')
let s:plugins = [
      \ 'junegunn/fzf',
      \ 'junegunn/fzf.vim',
      \ 'yegappan/lsp',
      \ 'ojroques/vim-oscyank',
      \ 'tpope/vim-commentary',
      \ 'itchyny/lightline.vim',
      \ 'elixir-editors/vim-elixir.git',
      \ '907th/vim-auto-save',
      \ 'mhinz/vim-signify',
      \ 'ap/vim-buftabline',
      \ 'aklt/plantuml-syntax',
      \ 'iamcco/markdown-preview.nvim',
      \ 'ghifarit53/tokyonight-vim',
      \ 'kamil-stachowski/flatwhite-vim',
      \ 'kamil-stachowski/flatwhite-vim',
      \ 'eddy147/gemini.vim',
      \ ]

function! s:ensure(repo) abort
  let name = split(a:repo, '/')[-1]
  let path = s:plugin_dir . '/' . name

  if !isdirectory(s:plugin_dir)
    call mkdir(s:plugin_dir, 'p')
  endif

  if !isdirectory(path)
    call system('git clone --depth=1 git@github.com:' . a:repo . ' ' . shellescape(path))
  endif

  execute 'set runtimepath+=' . fnameescape(path)
endfunction

function! UpdateMyPlugins() abort
  for repo in s:plugins
    let name = split(repo, '/')[-1]
    let path = s:plugin_dir . '/' . name

   if isdirectory(path)
      let out = system('git -C ' . shellescape(path) . ' pull --ff-only')
      echom '[' . name . '] ' . substitute(out, '\n\+$', '', '')
    else
      echom '[' . name . '] not installed'
    endif
  endfor
endfunction

command! PluginUpdate call UpdateMyPlugins()
nnoremap <leader>pu :PluginUpdate<CR>


for repo in s:plugins
  call s:ensure(repo)
endfor

