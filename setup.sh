#!/bin/bash

# Function to create a symbolic link for nvim
create_nvim_link() {
    if [ -d "nvim" ]; then
        ln -sf "$(pwd)/nvim" "$HOME/.config/nvim"
        echo "Symbolic link for nvim created successfully!"
    else
        echo "Error: The 'nvim' folder does not exist in the current directory."
        exit 1
    fi
}

# Function to create a symbolic link for .zshrc
create_zshrc_link() {
    if [ -f ".zshrc" ]; then
        ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"
        echo "Symbolic link for .zshrc created successfully!"
    else
        echo "Error: The '.zshrc' file does not exist in the current directory."
        exit 1
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
    *)
        echo "Invalid argument: $1. Please specify 'nvim' or 'zshrc'."
        exit 1
        ;;
esac

