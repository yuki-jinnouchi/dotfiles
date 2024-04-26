#!/bin/bash

# define the dotfiles
zsh_dotfiles=(
	.zshenv
	.zshrc
)
# make a symbolic link to the home directory
for file in "${zsh_dotfiles[@]}"; do
	ln -svf ~/dotfiles/.zsh/$file ~
done

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# set .vim
ln -svf $HOME/dotfiles/.vim/.vimrc $HOME
ln -svf $HOME/dotfiles/.vim/.gvimrc $HOME
mkdir $HOME/.vim
mkdir $HOME/.vim/colors
ln -svf $HOME/dotfiles/.vim/colors/iceburg.vim ~/.vim/colors

# set atcoder-tools
mkdir $HOME/.atcoder-tools
ln -svf $HOME/dotfiles/.atcoder-tools/.atcodertools.toml $HOME/.atcoder-tools
ln -svf $HOME/dotfiles/.atcoder-tools/my_template.cpp $HOME/.atcoder-tools
