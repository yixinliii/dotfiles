#!/bin/bash

create_nvim_link() {
    local source_dir="$(pwd)/nvim"
    local target_dir="$HOME/.config/nvim"

    # Check if the 'nvim' directory exists at the current location
    if [ ! -d "$source_dir" ]; then
        echo "Error: The source 'nvim' folder does not exist in the current directory."
        return 1
    fi

    # Ensure the target config directory exists, create if it does not
    if [ ! -d "$(dirname "$target_dir")" ]; then
        mkdir -p "$(dirname "$target_dir")"
    fi

    # Create the symbolic link
    ln -sfn "$source_dir" "$target_dir"
    echo "Symbolic link for nvim created successfully!"
}

# Function to create a symbolic link for .zshrc
create_zshrc_link() {
    local source_file=".zshrc"
    local target_file="$HOME/.zshrc"

    # Check if the '.zshrc' file exists at the current location
    if [ -f "$source_file" ]; then
        # Backup the original .zshrc if it exists
        [ -f "$target_file" ] && mv "$target_file" "${target_file}.bak"

        ln -sf "$(pwd)/$source_file" "$target_file"
        echo "Symbolic link for .zshrc created successfully!"
    else
        echo "Error: The '$source_file' file does not exist in the current directory."
        return 1
    fi
}

# Function to create a symbolic link for .bashrc
create_bashrc_link() {
    local source_file=".bashrc"
    local target_file="$HOME/.bashrc"

    # Check if the '.bashrc' file exists at the current location
    if [ -f "$source_file" ]; then
        # Backup the original .bashrc if it exists
        [ -f "$target_file" ] && mv "$target_file" "${target_file}.bak"

        ln -sf "$(pwd)/$source_file" "$target_file"
        echo "Symbolic link for .bashrc created successfully!"
    else
        echo "Error: The '$source_file' file does not exist in the current directory."
        return 1
    fi
}

# Function to create a symbolic link for .vimrc
create_vim_link() {
    local source_file=".vimrc"
    local target_file="$HOME/.vimrc"

    # Check if the '.vimrc' file exists at the current location
    if [ -f "$source_file" ]; then
        # Backup the original .vimrc if it exists
        [ -f "$target_file" ] && mv "$target_file" "${target_file}.bak"

        ln -sf "$(pwd)/$source_file" "$target_file"
        echo "Symbolic link for .vimrc created successfully!"
    else
        echo "Error: The '$source_file' file does not exist in the current directory."
        return 1
    fi
}


# Check for the command-line argument
if [ $# -eq 0 ]; then
    echo "Error: No arguments provided. Please specify 'nvim' or 'zshrc'."
    exit 1
fi

# Process the argument
case $1 in
    nvim)
        create_nvim_link
        ;;
    zsh)
        create_zshrc_link
        ;;
    bash)
	create_bashrc_link
	;;
    vim)
	create_vim_link
	;;
    *)
        echo "Invalid argument: $1. Please specify 'nvim' or 'zshrc'."
        exit 1
        ;;
esac

