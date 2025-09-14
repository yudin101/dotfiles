#!/bin/bash
DOTFILES=$HOME/dotfiles

# home configs
ln -sf $DOTFILES/bashrc ~/.bashrc
ln -sf $DOTFILES/gitconfig ~/.gitconfig
ln -sf $DOTFILES/tmux.conf ~/.tmux.conf
ln -sf $DOTFILES/xinitrc ~/.xinitrc

# XDG configs
ln -sf $DOTFILES/config/alacritty ~/.config/alacritty
ln -sf $DOTFILES/config/herbstluftwm ~/.config/herbstluftwm
ln -sf $DOTFILES/config/nvim ~/.config/nvim

# Vim
ln -sf $DOTFILES/vim ~/.vim

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
