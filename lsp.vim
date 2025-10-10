" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
  autocmd User LspSetup call LspOptionsSet(lspOpts)

" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

" === python:
" pip install python-lsp-server
" pip install 'python-lsp-server[all]'
" when using Python virtual environments (venv, conda, poetry, etc.), the LSP might 
" only be available when the terminal session (same where vim is launched) is active within that environment. 
" So launch Vim after activating the virtual environment:
" [bash]
" source .venv/bin/activate
" vim
"
" === elixir:
" cd ~/tools
" gh repo clone elixir-lsp/elixir-ls
" cd ~/elixir-ls
" mix deps.get
" MIX_ENV=prod mix compile
" MIX_ENV=prod mix elixir_ls.release2 -o release


let lspServers = [
\   #{
\     name: 'python-lsp-server',
\     filetype: ['python'],
\     path: 'pylsp',
\     args: []
\   },      
\ #{
\   name: 'vim-language-server',
\   filetype: ['vim', '.vimrc'],
\   path: 'vim-language-server',
\   args: ['--stdio']
\ },
\ #{
\   name: 'elixir-ls',
\   filetype: ['elixir', 'heex'],
\   path: '/home/eddy/tools/elixir-ls/release/language_server.sh',
\   args: []
\ },
\ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
      \   diagSignErrorText: '✘',
      \   diagSignWarningText: '▲',
      \   diagSignInfoText: '»',
      \   diagSignHintText: '⚑',
      \ })

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
      \   diagSignErrorText: '✘',
      \   diagSignWarningText: '▲',
      \   diagSignInfoText: '»',
      \   diagSignHintText: '⚑',
      \ })
