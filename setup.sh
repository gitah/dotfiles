#! /bin/bash
DIR=$(cd $(dirname "$0"); pwd)

# Bash
ln -s $DIR/bash/_bashrc ~/.bashrc
ln -s $DIR/bash/_profile ~/.profile

# Vim
ln -s $DIR/vim/_vimrc ~/.vimrc
ln -s $DIR/vim/_vimfiles ~/.vim
vim +BundleInstall +qall

# Git
ln -s $DIR/git/_gitconfig ~/.gitconfig
ln -s $DIR/git/_gitignore_global ~/.gitignore_global
