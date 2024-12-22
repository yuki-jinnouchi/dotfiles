#!/bin/bash

# set zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/dotfiles/zsh/.zprezto
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

# set vim
ln -svf ~/dotfiles/vim/.vimrc ~
ln -svf ~/dotfiles/vim/.gvimrc ~
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
ln -svf ~/dotfiles/vim/colors/iceburg.vim ~/.vim/colors

# set nvim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
ln -svf ~/dotfiles/nvim/init.vim ~/.config/nvim

# set tmux
ln -svf ~/dotfiles/tmux/.tmux.conf ~
ln -svf ~/dotfiles/tmux/ide.sh ~

# set atcoder-tools
mkdir -p ~/.atcoder-tools
ln -svf ~/dotfiles/atcoder-tools/.atcodertools.toml ~
ln -svf ~/dotfiles/atcoder-tools/my_template.cpp ~/.atcoder-tools
