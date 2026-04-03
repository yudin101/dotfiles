#!/bin/bash
set -e

DOTFILES=$HOME/dotfiles

mkdir -p "$HOME/.config"

# Clear previous configs if they exist
rm -rf \
  "$HOME/.config/alacritty" \
  "$HOME/.config/herbstluftwm" \
  "$HOME/.config/nvim" \
  "$HOME/.config/mpv" \
  "$HOME/.config/pipewire" \
  "$HOME/.vimrc" \
  "$HOME/.bashrc" \
  "$HOME/.bash_aliases" \
  "$HOME/.gitconfig" \
  "$HOME/.tmux.conf" \
  "$HOME/.xinitrc" \

# Home configs
ln -sf $DOTFILES/bashrc $HOME/.bashrc
ln -sf $DOTFILES/bash_aliases $HOME/.bash_aliases
ln -sf $DOTFILES/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES/xinitrc $HOME/.xinitrc
ln -sf $DOTFILES/vimrc $HOME/.vimrc

# XDG configs
ln -sf $DOTFILES/config/alacritty $HOME/.config/alacritty
ln -sf $DOTFILES/config/herbstluftwm $HOME/.config/herbstluftwm
ln -sf $DOTFILES/config/nvim $HOME/.config/nvim
ln -sf $DOTFILES/config/mpv $HOME/.config/mpv
ln -sf $DOTFILES/config/pipewire $HOME/.config/pipewire
