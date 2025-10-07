" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
" let lspServers = [
"        \ #{
"       \   name: 'rust-analyzer',
"       \   filetype: ['rust'],
"       \   path: 'rust-analyzer',
"       \   args: []
"       \ },
"       \ #{
"       \   name: 'elixir-ls',
"       \   filetype: ['elixir', 'heex'],
"       \   path: 'language_server.sh',
"       \   args: []
"       \ },
"       \ ]

autocmd User LspSetup call LspAddServer([#{
      \   name: 'elixir-ls',
      \   filetype: ['elixir', 'heex', 'ex', 'exs'],
      \   path: '/home/eddy/tools/elixir-ls/release/language_server.sh',
      \   args: []
      \ }])

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
