#!/bin/bash

function install_plugin() {
	dir_name=$1
    init_mode=$2
	plugin=$3
    plugin_name=$4

	mkdir -p ~/.vim/pack/${dir_name}/${init_mode}
	pushd ~/.vim/pack/${dir_name}/${init_mode}

    if [ -d ${plugin_name} ]; then
        pushd ${plugin_name}
        git pull
        popd
    else
        git clone ${plugin} ${plugin_name}
    fi

    popd
}
