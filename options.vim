filetype plugin indent on
set backspace=indent,eol,start
set completeopt=menuone,noinsert
set expandtab 
set ignorecase "if you want to search case sensitie, add I: %s/bla/foo/gI, or :set ic and after :set noic
set noshowmode "Don't show mode in command line, we use lightline.vim
set number
set path+=**
set report=0 
set shiftwidth=2
set signcolumn=yes
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set wildignore+=*/_build/*,*/deps/*,*/node_modules/*,*/.elixir-ls/*,*/.elixir-tools/*,*/.lexical/*

let g:auto_save = 1

" show buffers in tabs
set showtabline=2 "1 = only if multiple tabs, 2=always
let g:buftabline_show = 1

syntax on
" "unnamedplus" uses the + register, which corresponds to the clipboard accessible via Ctrl + C / Ctrl + V.
" "unnamed" uses the * register, which corresponds to the selection clipboard on Linux (the one used by middle-click paste).
set clipboard^=unnamed,unnamedplus

" autosave options
let g:auto_save_events = ["InsertLeave"]

" json
autocmd BufRead,BufNewFile *.json,*.jsonl set filetype=json
let g:vim_json_conceal = 0

" elixir
autocmd BufRead,BufNewFile *.heex,*.leex setfiletype elixir

" fzf, also defined in ~/.config/fish/conf.d/fzf.fish
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --ignore-file .gitignore'
