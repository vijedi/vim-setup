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
" Note color scheme one-dark is set as a post-install action
set bg=dark

" Remapping keys
let mapleader = " "

" Core keyboard shortcuts
nnoremap <silent><leader>l :buffers<CR>
nnoremap <silent><leader>% :vs<CR>
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

" Disable markdown folding. It ends up being more annoying than useful
let g:vim_markdown_folding_disabled = 1

" Allow vim rc to persist beyond a session
let g:localvimrc_persistent = 2
