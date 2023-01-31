" Core Vim Config
syntax on

set display+=lastline
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set linebreak
set nu
set shiftwidth=4
set tabstop=4
set virtualedit=
set wildmenu
set wrap

set nolist
set noswapfile

filetype plugin indent on

" Color schemes
set bg=dark
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE

" Remapping keys
let mapleader = " "

" Core keyboard shortcuts
nnoremap <silent><leader>:l :buffers<CR>
nnoremap <silent><leader>% vs<CR>
nnoremap <silent><leader>" :split<CR>
nnoremap <silent><leader>C :nohl<CR>

" Wrapped line navigation
noremap <buffer><silent><Up> gk
noremap <buffer><silent><Down> gj
noremap <buffer><silent><Home> g<Home>
noremap <buffer><silent><End> g<End>
inoremap <buffer><silent><Up> <C-o>gk
inoremap <buffer><silent><Down> <C-o>gj
inoremap <buffer><silent><Home> <C-o>g<Home>
inoremap <buffer><silent><End> <C-o>g<End>
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" ACK config
if executable('ag')
	let g:ackprg = 'ag --vimgrep'
end

cnoreabbrev Ack Ack!
nnoremap <Leader>A :Ack!<CR>

" Netrw Config
let g:netrw_winsize = 30
nmap ø :Lex<CR>

" CTRL P Config
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:30'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" " CoC Config
" set updatetime=300
" set nobackup
" set nowritebackup
" set signcolumn=number

" " CoC extensions
" let g:coc_global_extensions = ['coc-solargraph', 'coc-json', 'coc-prettier', 'coc-eslint']

" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
" nmap <leader>qf <Plug>(coc-fix-current)

" " Format
" nmap <leader>f	:CocCommand prettier.formatFile<CR>

" " Fix syntax highlight for CoC plugin floating errors
" hi CocErrorFloat guifg=Magenta guibg=Magenta
