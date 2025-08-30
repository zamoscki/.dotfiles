echo 'Set Vim'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlink for vim config file
safe_symlink "$current_dir/.vimrc" "$HOME/.vimrc" ".vimrc"

echo 'Ok'
