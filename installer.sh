#!/bin/bash

# not a working script yet

#Varios
yay -S brave-bin neovim lazygit variety scrot volumeicon picom alacritty \
  obsidian solaar github-cli tmux timeshift zathura zathura-pdf-poppler

#pip-nvm-rust
python -m ensurepip --upgrade
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
nvm install node

#lvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
echo 'alias v=lvim' >> ~/.bashrc

#tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Symbolic links
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/config/lvim/ $HOME/.config/lvim
ln -s $HOME/dotfiles/config/awesome/ $HOME/.config/awesome
ln -s $HOME/dotfiles/config/alacritty/ $HOME/.config/alacritty
