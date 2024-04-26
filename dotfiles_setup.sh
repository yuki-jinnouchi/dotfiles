#!/bin/sh

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
ln -svf ~/dotfiles/.vim/.vimrc ~
ln -svf ~/dotfiles/.vim/.gvimrc ~
mkdir ~/.vim
mkdir ~/.vim/colors
ln -svf ~/dotfiles/.vim/colors/iceburg.vim ~/.vim/colors

# set atcoder-tools
mkdir ~/.atcoder-tools
ln -svf ~/dotfiles/.atcoder-tools/.atcodertools.toml ~/.atcoder-tools
ln -svf ~/dotfiles/.atcoder-tools/my_template.cpp ~/.atcoder-tools
