echo 'Set Alacritty'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlink for alacritty config file
safe_symlink "$current_dir/.alacritty.toml" "$HOME/.alacritty.toml" ".alacritty.toml"

echo 'Ok'
