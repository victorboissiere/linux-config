#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp /tmp/setup/linux-config/vim/.vimrc ~/.vimrc
cp -r /tmp/setup/linux-config/vim/snippets/snippets ~/.vim/
