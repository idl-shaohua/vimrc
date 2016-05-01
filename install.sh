#!/bin/bash

echo "Check environment..."
if !hash git 2> /dev/null; then
    echo "Please instal git"
    exit
fi

if !hash ctags 2> /dev/null; then
    echo "Please install ctags"
    exit
fi

echo "Install powerline fonts..."
git clone git@github.com:powerline/fonts.git
./fonts/install.sh
rm -rf ./fonts

echo "Install vim-airline-themes..."
git clone https://github.com/vim-airline/vim-airline-themes.git
cp ./vim-airline-themes ~/.vim
rm ./vim-airline-themes

echo "Install vimrc..."
git clone git@github.com:idl-shaohua/vimrc.git
cp ./vimrc/.vimrc ~/.vimrc
rm -rf ./vimrc
