#!/bin/bash

PACKERDIR="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
# Install packer
if [ ! -d "$PACKERDIR" ]; then
  echo "Packer directory not found. Cloning Packer"
  if [ $(git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    "$PACKERDIR") ]; then
    echo "Creating symlink"
    ln -s $HOME/dotfiles/config/nvim $HOME/.config/nvim
  fi
else
  echo "Packer directory found."
fi
