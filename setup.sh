#!/bin/bash

# set the dotfiles directory
DOTCOMMON="$HOME/dotfiles/common"

# set zsh
if [ ! -d "$DOTCOMMON"/zsh/.zprezto ]; then
	echo "Cloning Prezto..."
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "$DOTCOMMON"/zsh/.zprezto
	# define the dotfiles
else
	echo "Prezto already exists, skipping clone."
fi

# make a symbolic link to the home directory
for file in ".zshenv" ".zshrc" ".zprofile"; do
	ln -svf ~/dotfiles/common/zsh/$file ~
done

# set vim
echo "\nSetting up Vim conf..."
ln -svf "$DOTCOMMON"/vim/vimrc ~/.vimrc
ln -svf "$DOTCOMMON"/vim/gvimrc ~/.gvimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
ln -svf "$DOTCOMMON"/vim/colors/iceberg.vim ~/.vim/colors

# set nvim
echo "\nSetting up Neovim conf..."
mkdir -p ~/.config
mkdir -p ~/.config/nvim
ln -svf "$DOTCOMMON"/nvim/init.vim ~/.config/nvim

# set tmux
echo "\nSetting up Tmux conf..."
ln -svf "$DOTCOMMON"/tmux/tmux.conf ~/.tmux.conf
ln -svf "$DOTCOMMON"/tmux/ide.sh ~

# set git
echo "\nSetting up Git conf..."
ln -svf "$DOTCOMMON"/git/.gitconfig ~/.gitconfig
ln -svf "$DOTCOMMON"/git/.gitignore_global ~/.gitignore_global

# set atcoder-tools
echo "\nSetting up AtCoder tools conf..."

ACTOOLS_SRC="$DOTCOMMON"/atcoder-tools
ACTOOLS_DIR=~/Dropbox/procon/atcoder/.atcoder-tools

ln -svf "$ACTOOLS_SRC"/atcodertools.toml ~/.atcodertools.toml
ln -svf "$ACTOOLS_SRC"/atcodertools.toml "$ACTOOLS_DIR"/.atcodertools.toml
mkdir -p ~/.atcoder-tools
ln -svf "$ACTOOLS_SRC"/my_template.cpp ~/.atcoder-tools
ln -svf "$ACTOOLS_SRC"/my_template.cpp "$ACTOOLS_DIR"
