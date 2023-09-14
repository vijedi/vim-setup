" Wrapped line navigation. These are not compatible with CoC hovers so should
" not be in the main vimrc file
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


