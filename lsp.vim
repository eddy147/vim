" Enable diagnostics highlighting
let lspOpts = #{
\ autoHighlightDiags: v:true,
\ hoverInPreview: v:true
\ }
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
\     filetype: ['vim'],
\     path: 'vim-language-server',
\     args: ['--stdio']
\   },
\   #{
\     name: 'elixir-ls',
\     filetype: ['elixir', 'heex', 'eelixir'],
\     path: '/home/eddy/tools/elixir-ls/release/language_server.sh',
\     args: []
\   },
\   #{
\     name: 'vscode-json-language-server',
\     filetype: ['json', 'jsonc'],
\     path: 'vscode-json-language-server',
\     args: ['--stdio']
\   },
\   #{
\     name: 'xml-language-server',
\     filetype: ['xml', 'xsd', 'xsl', 'xslt', 'svg'],
\     path: 'lemminx',
\     args: ['--stdio']
\   },
\ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
\     diagSignErrorText: '✘',
\     diagSignWarningText: '▲',
\     diagSignInfoText: '»',
\     diagSignHintText: '⚑',
\ })

" === Key mappings ===
nnoremap gd          :LspGotoDefinition<CR>
nnoremap gr          :LspShowReferences<CR>

function! s:lsp_hover_focus_preview() abort
  silent! LspHover
  call timer_start(80, function('<SID>focus_lsp_hover_buffer'), {'repeat': 50})
endfunction

function! s:focus_lsp_hover_buffer(timer) abort
  let l:winnr = bufwinnr('LspHover')
  if l:winnr > 0
    execute l:winnr .. 'wincmd w'
    call timer_stop(a:timer)
  endif
endfunction

nnoremap <silent> K  :call <SID>lsp_hover_focus_preview()<CR>
nnoremap gl          :LspDiag current<CR>
nnoremap <leader>x   :LspDiag show<CR>
nnoremap <leader>nd  :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd  :LspDiag prev \| LspDiag current<CR>

augroup LspHoverPreviewKeys
  autocmd!
  autocmd BufWinEnter LspHover nnoremap <silent><buffer> q :pclose<CR>
augroup END

" Completion mappings
inoremap <silent> <C-Space> <C-x><C-o>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ "\<C-x>\<C-o>"

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<CR>"

" Auto-format using LSP before saving for supported filetypes
augroup LspAutoFormat
  autocmd!
  autocmd BufWritePre *.ex,*.exs,*.heex,*.py,*.vim,*.json,*.jsonc,*.jsonl,*.xml,*.xsd,*.xsl,*.xslt,*.svg LspFormat
augroup END
