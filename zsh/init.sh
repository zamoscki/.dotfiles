echo 'Set Zsh'

current_dir=$(dirname $0)

# Source utility functions
. "$current_dir/../utils.sh"

# Create symlinks for zsh config files
safe_symlink "$current_dir/.zshrc" "$HOME/.zshrc" ".zshrc"
safe_symlink "$current_dir/.zprofile" "$HOME/.zprofile" ".zprofile"

# Install oh-my-zsh if not already present
install_if_missing "$HOME/.oh-my-zsh" 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"' "oh-my-zsh"

echo 'Ok'
