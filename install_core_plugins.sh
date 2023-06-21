#!/bin/bash

. ./lib/functions.sh

install_plugin 'common' 'start' 'https://github.com/tpope/vim-sensible.git' 'vim-sensible'
install_plugin 'common' 'start' 'https://github.com/tpope/vim-surround.git' 'vim-surround'
install_plugin 'common' 'start' 'https://github.com/tpope/vim-vinegar.git' 'vim-vinegar'
install_plugin 'common' 'start' 'https://github.com/tpope/vim-repeat.git' 'vim-repeat'
install_plugin 'common' 'start' 'https://github.com/vim-airline/vim-airline.git' 'vim-airline'
install_plugin 'common' 'start' 'https://github.com/editorconfig/editorconfig-vim.git' 'editorconfig-vim'
install_plugin 'common' 'start' 'https://github.com/embear/vim-localvimrc.git' 'vim-localvimrc'
install_plugin 'common' 'start' 'https://github.com/mileszs/ack.vim.git' 'ack.vim'
install_plugin 'common' 'start' 'https://github.com/ctrlpvim/ctrlp.vim.git' 'ctrlp.vim'
install_plugin 'common' 'start' 'https://github.com/preservim/vim-markdown.git' 'vim-markdown'
install_plugin 'colors' 'start' 'https://github.com/joshdick/onedark.vim.git' 'one-dark'

mkdir -p ~/.vim/plugin
touch ~/.vim/plugin/load_plugins.vim

if ! grep -q colorscheme ~/.vim/plugin/load_plugins.vim; then 
    echo 'colorscheme onedark' >> ~/.vim/plugin/load_plugins.vim
    echo 'hi Normal guibg=NONE ctermbg=NONE' >> ~/.vim/plugin/load_plugins.vim
    echo 'hi EndOfBuffer guibg=NONE ctermbg=NONE' >> ~/.vim/plugin/load_plugins.vim

fi
