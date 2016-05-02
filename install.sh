#!/bin/bash

echo "Check environment..."
if ! hash git 2> /dev/null; then
    if hash apt-get 2> /dev/null; then
        sudo apt-get install -y git
    else
        echo "Please install git"
        exit
    fi
fi

if ! hash ctags 2> /dev/null; then
    if hash apt-get 2> /dev/null; then
        sudo apt-get install -y ctags
    else
        echo "Please install ctags"
        exit
    fi
fi

echo "Install powerline fonts..."
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
sudo cp ~/.local/share/fonts/* /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
rm -rf ./fonts

echo "Install vim-airline-themes..."
git clone https://github.com/vim-airline/vim-airline-themes.git
cp ./vim-airline-themes ~/.vim
rm -rf ./vim-airline-themes

echo "Install vimrc..."
git clone https://github.com/idl-shaohua/vimrc.git
cp ./vimrc/.vimrc ~/.vimrc
rm -rf ./vimrc
