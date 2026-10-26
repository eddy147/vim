packadd! comment
filetype plugin indent on
scriptencoding utf-8
set background=dark
set backspace=indent,eol,start
set belloff=all
set completeopt=menuone,noinsert
set confirm
set cursorline
if exists('+cursorlineopt')
  set cursorlineopt=both
endif
set expandtab 
set fileformat=unix
set ignorecase "if you want to search case sensitie, add I: %s/bla/foo/gI, or :set ic and after :set noic
set list
set nobackup
set list lcs=trail:·,tab:»-,eol:↵,nbsp:·
" exe "set listchars=conceal:\u22ef,tab:\u2595\u2014,trail:\u02d1,precedes:\u2026,extends:\u2026,eol:\uac,nbsp:\ub7"
set noshowmode "Don't show mode in command line, we use lightline.vim
set number
set path+=**
set relativenumber
set report=0 
set scrolloff=2
set showcmd
set showmatch
set report=0
set shiftwidth=2
set signcolumn=yes
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set title
set wildignore+=*/_build/*,*/deps/*,*/node_modules/*,*/.elixir-ls/*,*/.elixir-tools/*,*/.lexical/*

syntax on
" "unnamedplus" uses the + register, which corresponds to the clipboard accessible via Ctrl + C / Ctrl + V.
" "unnamed" uses the * register, which corresponds to the selection clipboard on Linux (the one used by middle-click paste).
set clipboard^=unnamed,unnamedplus

" json
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.jsonl set filetype=jsonl
autocmd FileType jsonl setlocal syntax=json
let g:vim_json_conceal = 0

"fzf, also defined in ~/.config/fish/conf.d/fzf.fish
" Ripgrep file search for fzf (:Files)
" Includes dotfiles (.env, .formatter.exs) while strictly ignoring .git/
" let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
let $FZF_DEFAULT_COMMAND = 'fd --type f --hidden --follow --exclude .git'

"puml
autocmd BufRead,BufNewFile *.puml,*.plantuml set filetype=plantuml

"auto reload buffers
set autoread
augroup auto_reload_files
  autocmd!
  autocmd FocusGained,BufEnter * checktime
augroup END

" Explicitly tell markdown-preview to use system node
let g:mkdp_node_path = expand('~/.asdf/shims/node')
