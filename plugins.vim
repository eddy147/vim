vim9script

# plugins.vim - Asynchronous Vim9 Plugin Manager
var plugin_dir = expand('~/.vim/plugged')

g:plugins = [
      \ 'junegunn/fzf',
      \ 'junegunn/fzf.vim',
      \ 'yegappan/lsp',
      \ 'ojroques/vim-oscyank',
      \ 'tpope/vim-commentary',
      \ 'itchyny/lightline.vim',
      \ 'elixir-editors/vim-elixir',
      \ '907th/vim-auto-save',
      \ 'mhinz/vim-signify',
      \ 'ap/vim-buftabline',
      \ 'aklt/plantuml-syntax',
      \ 'iamcco/markdown-preview.nvim',
      \ 'ghifarit53/tokyonight-vim',
      \ 'kamil-stachowski/flatwhite-vim',
      \ 'dracula/vim',
      \ 'eddy147/gemini.vim',
      \ ]

# 1. Startup: Clone missing plugins and register runtimepaths
def EnsurePlugins()
  for repo in g:plugins
    var name = split(repo, '/')[-1]->substitute('\.git$', '', '')
    var path = plugin_dir .. '/' .. name

    if !isdirectory(plugin_dir)
      mkdir(plugin_dir, 'p')
    endif

    if !isdirectory(path)
      echom printf('[plugins.vim] Cloning %s...', name)
      system('git clone --depth=1 git@github.com:' .. repo .. ' ' .. shellescape(path))
    endif

    execute 'set runtimepath+=' .. fnameescape(path)
  endfor
enddef

EnsurePlugins()

# 2. Async Parallel Updates
def UpdateMyPlugins()
  var active_jobs = 0
  var total = len(g:plugins)

  echom printf('[PluginUpdate] Starting parallel update for %d plugins...', total)

  for repo in g:plugins
    var name = split(repo, '/')[-1]->substitute('\.git$', '', '')
    var path = $'"{plugin_dir}/{name}"'

    if !isdirectory(expand(path[1 : -2]))
      echom printf('[%s] Not installed.', name)
      continue
    endif

    var cmd = $'git -C {path} pull --ff-only --stat=count'
    active_jobs += 1

    job_start(['sh', '-c', cmd], {
      out_cb: (channel, msg) => {
        var clean_msg = substitute(msg, '[\r\n]\+', ' ', 'g')
        if clean_msg !~# 'Already up-to-date' && !empty(clean_msg)
          echom printf('[%s] Updated: %s', name, clean_msg)

          # Auto-helptags on update
          var doc_dir = expand(path[1 : -2]) .. '/doc'
          if isdirectory(doc_dir)
            execute 'helptags ' .. fnameescape(doc_dir)
          endif

          # Auto-rebuild markdown-preview if updated
          if name ==# 'markdown-preview.nvim'
            echom '[markdown-preview.nvim] Rebuilding app binaries...'
            job_start(['sh', '-c', $'cd {path}/app && ./install.sh'])
          endif
        endif
      },
      exit_cb: (job, status) => {
        active_jobs -= 1
        if active_jobs == 0
          echom '[PluginUpdate] All plugins updated!'
        endif
      }
    })
  endfor
enddef

command! PluginUpdate UpdateMyPlugins()
nnoremap <leader>pu :PluginUpdate<CR>
