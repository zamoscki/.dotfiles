echo 'Set Alacritty'

current_dir=$(dirname $0)

config_file_path=$(readlink -f $current_dir/.alacritty.toml)

ln -sfv $config_file_path "$HOME/.alacritty.toml"

echo 'Ok'
