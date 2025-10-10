" plugins.vim - Dead simple plugin manager
" Just source this file in your vimrc
let s:plugin_dir = expand('~/.vim/plugged')

" Install a plugin if it doesn't exist
function! s:ensure(repo)
  let name = split(a:repo, '/')[-1]
  let path = s:plugin_dir . '/' . name
  
  if !isdirectory(path)
    if !isdirectory(s:plugin_dir)
      call mkdir(s:plugin_dir, 'p')
    endif
    execute '!git clone --depth=1 git@github.com:' . a:repo . ' ' . shellescape(path)
  endif
  
  execute 'set runtimepath+=' . fnameescape(path)
endfunction

" Your plugins
call s:ensure('junegunn/fzf')
call s:ensure('junegunn/fzf.vim')
call s:ensure('tomasiser/vim-code-dark')
call s:ensure('yegappan/lsp')
call s:ensure('ojroques/vim-oscyank')
call s:ensure('tpope/vim-commentary')
call s:ensure('itchyny/lightline.vim')
call s:ensure('elixir-editors/vim-elixir.git')
call s:ensure('907th/vim-auto-save')
" colorschemes
call s:ensure('ghifarit53/tokyonight-vim')
call s:ensure('jdsimcoe/abstract.vim')
call s:ensure('Badacadabra/vim-archery')
call s:ensure('yorickpeterse/happy_hacking.vim')
call s:ensure('vim/colorschemes')

