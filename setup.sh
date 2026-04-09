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
	"$HOME/.xinitrc"

# Installing Neovim
# Tarball for CODESPACES cuz no FUSE
if [ "$CODESPACES" = "true" ]; then
	if [ ! -f /opt/nvim/bin/nvim ]; then
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
		tar -xzf nvim-linux-x86_64.tar.gz
		sudo mv nvim-linux-x86_64 /opt/nvim
		rm nvim-linux-x86_64.tar.gz
	fi
	export PATH="$PATH:/opt/nvim/bin"
else
	# Appimage for local
	if ! command -v nvim &>/dev/null; then
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
		chmod +x nvim-linux-x86_64.appimage
		sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim
	fi
fi

if ! command -v tmux &>/dev/null; then
	sudo apt-get update && sudo apt-get install -y tmux
fi

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
