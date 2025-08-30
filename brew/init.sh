#!/bin/sh

echo 'Set Brew'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlink for brewfile
safe_symlink "$current_dir/.brewfile" "$HOME/.brewfile" ".brewfile"

# Install Homebrew if not already present
install_if_missing "/opt/homebrew/bin/brew" '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"' "Homebrew"

eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file="$HOME/.brewfile"

echo 'Ok'
