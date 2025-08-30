#!/bin/sh

current_dir=$(dirname $0)

sh "$current_dir/alacritty/init.sh"
sh "$current_dir/git/init.sh"
sh "$current_dir/zsh/init.sh"
sh "$current_dir/brew/init.sh"
sh "$current_dir/vim/init.sh"
sh "$current_dir/tmux/init.sh"
sh "$current_dir/defaults/init.sh"
sh "$current_dir/gpg/init.sh"
