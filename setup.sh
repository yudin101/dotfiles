#!/bin/bash
set -e

DOTFILES=$HOME/dotfiles

# Clear previous configs if they exist
mkdir -p "$HOME/.config"

rm -rf \
  "$HOME/.config/alacritty" \
  "$HOME/.config/herbstluftwm" \
  "$HOME/.config/nvim" \
  "$HOME/.config/mpv" \
  "$HOME/.config/pipewire" \
  "$HOME/.vim" \

# Home configs
ln -sf $DOTFILES/bashrc $HOME/.bashrc
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES/xinitrc $HOME/.xinitrc

# XDG configs
ln -sf $DOTFILES/config/alacritty $HOME/.config/alacritty
ln -sf $DOTFILES/config/herbstluftwm $HOME/.config/herbstluftwm
ln -sf $DOTFILES/config/nvim $HOME/.config/nvim
ln -sf $DOTFILES/config/mpv $HOME/.config/mpv
ln -sf $DOTFILES/config/pipewire $HOME/.config/pipewire

# Vim
ln -sf $DOTFILES/vim $HOME/.vim
