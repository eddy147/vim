filetype plugin indent on
set background=dark
set backspace=indent,eol,start
set expandtab 
set ignorecase "if you want to search case sensitie, add I: %s/bla/foo/gI, or :set ic and after :set noic
set noshowmode "Don't show mode in command line, we use lightline.vim
set number
set path+=**
set shiftwidth=2
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set wildignore+=*/_build/*,*/deps/*,*/node_modules/*,*/.elixir-ls/*,*/.elixir-tools/*,*/.lexical/*
syntax on
" "unnamedplus" uses the + register, which corresponds to the clipboard accessible via Ctrl + C / Ctrl + V.
" "unnamed" uses the * register, which corresponds to the selection clipboard on Linux (the one used by middle-click paste).
set clipboard = "unnamedplus"

" autosave options
let g:auto_save_events = ["InsertLeave"]

" json
au! BufRead,BufNewFile *.json set filetype=javascript
au! BufRead,BufNewFile *.jsonl set filetype=javascript
