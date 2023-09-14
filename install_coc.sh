#!/bin/bash

mkdir -p ~/.vim/pack/coc/opt
pushd ~/.vim/pack/coc/opt
if [ ! -d coc.nvim ]; then
    git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
    vim -c "helptags coc.nvim/doc/ | q"
fi
popd
