#!/bin/sh

# Utility functions for dotfiles setup

# Creates a symlink with file existence check
# Usage: safe_symlink <source_file> <target_file> [description]
safe_symlink() {
    local source_file="$1"
    local target_file="$2"
    local description="${3:-$(basename "$source_file")}"
    
    if [ -f "$source_file" ]; then
        ln -sfv "$(readlink -f "$source_file")" "$target_file"
        echo "✓ Linked $description"
    else
        echo "⚠ Warning: $source_file not found, skipping $description symlink creation."
        return 1
    fi
}

# Creates a symlink for directory with existence check
# Usage: safe_symlink_dir <source_dir> <target_dir> [description]
safe_symlink_dir() {
    local source_dir="$1"
    local target_dir="$2"
    local description="${3:-$(basename "$source_dir")}"
    
    if [ -d "$source_dir" ]; then
        ln -sfv "$(readlink -f "$source_dir")" "$target_dir"
        echo "✓ Linked $description directory"
    else
        echo "⚠ Warning: $source_dir not found, skipping $description directory symlink creation."
        return 1
    fi
}

# Checks if a command exists
# Usage: command_exists <command_name>
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Checks if a directory exists
# Usage: dir_exists <directory_path>
dir_exists() {
    [ -d "$1" ]
}

# Installs a package only if it's not already installed
# Usage: install_if_missing <check_path> <install_command> <package_name>
install_if_missing() {
    local check_path="$1"
    local install_command="$2"
    local package_name="$3"
    
    if [ ! -d "$check_path" ] && [ ! -f "$check_path" ]; then
        echo "Installing $package_name..."
        eval "$install_command"
    else
        echo "$package_name is already installed, skipping installation."
    fi
}
