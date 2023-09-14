#!/bin/bash

if [[ ! -f ~/.vimrc ]] || [[ $1 == '-f' ]]; then
    echo "Overriding VIMRC with the local version"
    cp .vimrc ~/
fi

./install_core_plugins.sh
./install_lang_plugins.sh
./install_coc.sh
