#!/bin/bash

echo 'Set NEOVIM'

current_dir=$(dirname $0)

# echo "$XDG_CONFIG_HOME/nvim/init.lua"

ln -sfv $(readlink -f $current_dir/init.lua) "$XDG_CONFIG_HOME/nvim/init.lua"

echo 'Ok'
