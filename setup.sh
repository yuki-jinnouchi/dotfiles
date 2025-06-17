#!/bin/bash

# set the dotfiles directory
DOTCOMMON="$HOME/dotfiles/common"

# set zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$DOTCOMMON"/zsh/.zprezto
# define the dotfiles
zsh_dotfiles=(
	.zshenv
	.zshrc
	.zprofile
)
# make a symbolic link to the home directory
for file in "${zsh_dotfiles[@]}"; do
	ln -svf ~/dotfiles/common/zsh/$file ~
done

# set vim
ln -svf "$DOTCOMMON"/vim/vimrc ~/.vimrc
ln -svf "$DOTCOMMON"/vim/gvimrc ~/.gvimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
ln -svf "$DOTCOMMON"/vim/colors/iceberg.vim ~/.vim/colors

# set nvim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
ln -svf "$DOTCOMMON"/nvim/init.vim ~/.config/nvim

# set tmux
ln -svf "$DOTCOMMON"/tmux/tmux.conf ~/.tmux.conf
ln -svf "$DOTCOMMON"/tmux/ide.sh ~

# set git
ln -svf "$DOTCOMMON"/git/.gitconfig ~/.gitconfig
ln -svf "$DOTCOMMON"/git/.gitignore_global ~/.gitignore_global

# set atcoder-tools
atcoder_dir=~/Dropbox/procon/atcoder
ln -svf "$DOTCOMMON"/atcoder-tools/atcodertools.toml ~/.atcodertools.toml
ln -svf "$DOTCOMMON"/atcoder-tools/atcodertools.toml "$atcoder_dir"/.atcoder-tools/.atcodertools.toml
mkdir -p ~/.atcoder-tools
ln -svf "$DOTCOMMON"/atcoder-tools/my_template.cpp ~/.atcoder-tools
ln -svf "$DOTCOMMON"/atcoder-tools/my_template.cpp "$atcoder_dir"/.atcoder-tools
