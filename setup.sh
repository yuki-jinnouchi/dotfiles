#!/bin/bash

# define the dotfiles
zsh_dotfiles=(
	.zshenv
	.zshrc
	.zprofile
)
# make a symbolic link to the home directory
for file in "${zsh_dotfiles[@]}"; do
	ln -svf ~/dotfiles/zsh/$file ~
done

git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/dotfiles/zsh/.zprezto

# set .vim
ln -svf ~/dotfiles/vim/.vimrc ~
ln -svf ~/dotfiles/vim/.gvimrc ~
mkdir ~/.vim
mkdir ~/.vim/colors
ln -svf ~/dotfiles/vim/colors/iceburg.vim ~/.vim/colors

# set atcoder-tools
mkdir ~/.atcoder-tools
ln -svf ~/dotfiles/atcoder-tools/.atcodertools.toml ~
ln -svf ~/dotfiles/atcoder-tools/my_template.cpp ~/.atcoder-tools
