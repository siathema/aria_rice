#!/bin/bash
RICE_TARGET_DIR="$HOME"

stoooow () {
    echo "Installing $1 ..."
    stow -D $1 -t $RICE_TARGET_DIR
    stow -t $RICE_TARGET_DIR $1
    echo "done"
}

echo "Installing dotfiles!..."

stoooow "i3"
stoooow "alacritty"
stoooow "bash"
stoooow "neovim"
stoooow "xorg"
stoooow "sxhkd"

echo "Installation finished"
