#!/bin/bash

echo "Overriding VIMRC with the local version"

cp .vimrc ~/

./install_core_plugins.sh
