##! /bin/bash
DIR=$(cd $(dirname "$0"); pwd)

# Bash
ln -s $DIR/bash/_bashrc ~/.bashrc
if [ `uname` == "Darwin" ]
then
    ln -s $DIR/bash/_profile ~/.profile
fi

# Vim
git clone https://github.com/gmarik/vundle.git $DIR/vim/vimfiles/bundle/vundle
ln -s $DIR/vim/_vimrc ~/.vimrc
ln -s $DIR/vim/_vimfiles ~/.vim
vim +BundleInstall +qall

# Git
ln -s $DIR/git/_gitconfig ~/.gitconfig
ln -s $DIR/git/_gitignore_global ~/.gitignore_global

# move common scripts
SCRIPTS_DIR=$DIR/scripts
for SCRIPT in $(ls $SCRIPTS_DIR)
do
    cp $SCRIPTS_DIR/$SCRIPT /usr/local/bin
    chmod 755 /usr/local/bin/$SCRIPT
done
