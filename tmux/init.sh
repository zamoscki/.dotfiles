echo 'Set Tmux'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlink for tmux config file
safe_symlink "$current_dir/.tmux.conf" "$HOME/.tmux.conf" ".tmux.conf"

echo 'Ok'
