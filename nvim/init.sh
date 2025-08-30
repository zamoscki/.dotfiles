#!/bin/bash

echo 'Set NEOVIM'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlink for neovim config file
safe_symlink "$current_dir/init.lua" "$XDG_CONFIG_HOME/nvim/init.lua" "init.lua"

echo 'Ok'
