#!/bin/bash
# Usage:
#  git clone $DOTFILE_REPO ~/.dotfiles
#  ~/.dotfiles/linkify.sh

DIR=`dirname "$0"`
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/vim ~/.vim
ln -s $DIR/gitconfig ~/.gitconfig
ln -s $DIR/emacs.d ~/.emacs.d
ln -s $DIR/ledgerrc ~/.ledgerrc
