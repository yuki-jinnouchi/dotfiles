#!/bin/bash

# set the dotfiles directory
dotcomon="$HOME/dotfiles/common"

# set zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "$dotcomon"/zsh/.zprezto
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
ln -svf "$dotcomon"/vim/vimrc ~/.vimrc
ln -svf "$dotcomon"/vim/gvimrc ~/.gvimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
ln -svf "$dotcomon"/vim/colors/iceberg.vim ~/.vim/colors

# set nvim
mkdir -p ~/.config
mkdir -p ~/.config/nvim
ln -svf "$dotcomon"/nvim/init.vim ~/.config/nvim

# set tmux
ln -svf "$dotcomon"/tmux/tmux.conf ~/.tmux.conf
ln -svf "$dotcomon"/tmux/ide.sh ~

# set git
ln -svf "$dotcomon"/git/gitconfig ~/.gitconfig
ln -svf "$dotcomon"/git/gitignore_global ~/.gitignore_global

# set atcoder-tools
atcoder_dir=~/Dropbox/procon/atcoder
ln -svf "$dotcomon"/atcoder-tools/atcodertools.toml ~/.atcodertools.toml
ln -svf "$dotcomon"/atcoder-tools/atcodertools.toml "$atcoder_dir"/.atcoder-tools/.atcodertools.toml
mkdir -p ~/.atcoder-tools
ln -svf "$dotcomon"/atcoder-tools/my_template.cpp ~/.atcoder-tools
ln -svf "$dotcomon"/atcoder-tools/my_template.cpp "$atcoder_dir"/.atcoder-tools
