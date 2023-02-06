" Copy these settings into a `./.lvimrc`
" CoC Config
set updatetime=300
set nobackup
set nowritebackup
set signcolumn=number

" CoC extensions - update to extensions for this project
" let g:coc_global_extensions = ['coc-solargraph', 'coc-json', 'coc-prettier', 'coc-eslint']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Format
nmap <leader>f	:CocCommand prettier.formatFile<CR>

" Fix syntax highlight for CoC plugin floating errors
hi CocErrorFloat guifg=Magenta guibg=Magenta
