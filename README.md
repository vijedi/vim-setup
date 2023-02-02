# My Personal VIM Setup

VI(M?) might be available everywhere but it is certainly not used the same by everyone. 
This repository contains scripts and config files to quickly bootstrap my setup when I have a new box.
Like a perpetual stew, this is an amalgomation of knowledge, tricks, and anti-patterns collected over a few decades.

## What I have in here

* `.vimrc` core setup, as light as possible but currently with the keybindings for COC
* `init_vim.sh` shell script to install everything. Will overwrite any existing `.vimrc`
* `install_core_plugins.sh` installs the plugin and colorscheme that I use everwhere. Running this again will update the plugins.
  * vim-sensible - sensible defaults
  * vim-surround - easy way to change quotes
  * vim-vinegar - improvements for the built in file manager
  * vim-airline - status line at the bottom of a vim panel
  * editorconfig-vim - enforcement for per-project editor config
  * vim-localvimrc - allow per project/directory vim config files (useful for polygot programming)
  * ack-vim - ack and the silver searcher support for vim
  * ctrlp - quick file open for vim
  * one-dark - my preferred vim colorscheme. Also includes support for enabling it.

