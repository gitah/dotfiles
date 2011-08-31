#! /bin/bash

DIR=$(cd $(dirname "$0"); pwd)

# Git config
ln -s $DIR/_gitconfig ~/.gitconfig

# Global Git ignore
ln -s $DIR/_gitignore_global ~/.gitignore_global
