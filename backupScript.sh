#!/bin/bash

printf "backing up files\n"

cp ~/.bash_profile dotfiles/.bash_profile
printf "#"

cp ~/.bashrc dotfiles/.bashrc
printf "#"

cp ~/.vimrc dotfiles/.vimrc
printf "#"

cp ~/.promptline.sh dotfiles/.promptline.sh
printf "#"
cp ~/.promptline2.sh dotfiles/.promptline2.sh
printf "#"

cp ~/.vimrc dotfiles/.vimrc
printf "#"

mkdir dotfiles/.vim
cp ~/.vim/packages.vim dotfiles/.vim/packages.vim
printf "#"

# homebrew

# `mas`

# atom

# pip

# npm

# motd

# bitbar plugins

# vaious applescripts, folder actions, and accompanying assets

# bettertouchtool config

# `ls` Applications folder to catch others not installed by brew, mas, etc.
printf "\nDONE!"
