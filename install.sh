#!/bin/bash

# Change to the directory of the script
cd "$(dirname "$0")"

# Stow the directories
stow git
stow nvim
stow zsh

echo "Dotfiles installed!"
