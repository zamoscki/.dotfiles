echo 'Set Git'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlinks for git config files
safe_symlink "$current_dir/.gitconfig" "$HOME/.gitconfig" ".gitconfig"
safe_symlink "$current_dir/.gitignore_global" "$HOME/.gitignore_global" ".gitignore_global"

echo 'Ok'
