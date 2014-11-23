#! /bin/bash
DIR=$(cd $(dirname "$0"); pwd)

# Bash
ln -s "$DIR/bash/_bashrc" ~/.bashrc
if [ `uname` == "Darwin" ]
then
    ln -s "$DIR/bash/_profile" ~/.profile
fi

# Vim
git clone https://github.com/gmarik/vundle.git "$DIR/vim/vimfiles/bundle/Vundle.vim"
ln -s "$DIR/vim/_vimrc" ~/.vimrc
ln -s "$DIR/vim/vimfiles" ~/.vim
vim +PluginInstall +qall

## Git
ln -s "$DIR/git/_gitconfig" ~/.gitconfig
ln -s "$DIR/git/_gitignore_global" ~/.gitignore_global

## setup useful scripts
BIN_SCRIPTS_DIR=~/bin
echo $BIN_SCRIPTS_DIR
mkdir ${BIN_SCRIPTS_DIR} &> /dev/null

## ack tool
curl "http://beyondgrep.com/ack-1.96-single-file" > $BIN_SCRIPTS_DIR/ack

## custom scripts
SCRIPTS_DIR=$DIR/scripts
for SCRIPT in $(ls "$SCRIPTS_DIR")
do
    cp "$SCRIPTS_DIR/$SCRIPT" ${BIN_SCRIPTS_DIR}
done

for SCRIPT in $(ls "$BIN_SCRIPTS_DIR")
do
    chmod 0755 $BIN_SCRIPTS_DIR/$SCRIPT
done


source ~/.bashrc
