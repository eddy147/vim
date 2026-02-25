" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

" === LSP Servers Configuration ===
let lspServers = [
\   #{
\     name: 'python-lsp-server',
\     filetype: ['python'],
\     path: 'pylsp',
\     args: []
\   },      
\   #{
\     name: 'vim-language-server',
\     filetype: ['vim', '.vimrc'],
\     path: 'vim-language-server',
\     args: ['--stdio']
\   },
\   #{
\     name: 'elixir-ls',
\     filetype: ['elixir', 'heex'],
\     path: '/home/eddy/tools/elixir-ls/release/language_server.sh',
\     args: []
\   },
\ ]

autocmd User LspSetup call LspAddServer(lspServers)

" === Key mappings ===
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>x :LspDiag show<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>

" Completion mappings
inoremap <silent> <C-Space> <C-x><C-o>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ "\<C-x>\<C-o>"

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Set omnifunc for completion
autocmd FileType php setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
      \   diagSignErrorText: '✘',
      \   diagSignWarningText: '▲',
      \   diagSignInfoText: '»',
      \   diagSignHintText: '⚑',
      \ })