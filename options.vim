set background=dark
set number
set path+=**
set wildignore+=*/_build/*,*/deps/*,*/node_modules/*,*/.elixir-ls/*,*/.elixir-tools/*,*/.lexical/*
filetype plugin indent on
set expandtab 
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent
set backspace=indent,eol,start
set noshowmode "Don't show mode in command line, we use lightline.vim
syntax on
" "unnamedplus" uses the + register, which corresponds to the clipboard accessible via Ctrl + C / Ctrl + V.
" "unnamed" uses the * register, which corresponds to the selection clipboard on Linux (the one used by middle-click paste).
set clipboard = "unnamedplus"

" autosave options
let g:auto_save_events = ["InsertLeave"]
