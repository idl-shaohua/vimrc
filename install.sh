#!/bin/bash

echo "Check environment..."
if ! hash vim 2> /dev/null; then
    if hash apt-get 2> /dev/null; then
        sudo apt-get install -y vim
    else
        echo "Please install vim"
        exit;
    fi
fi

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

echo "Install vim plug-in manager..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Install powerline fonts..."
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
if [ ! -d "/usr/share/fonts" ]; then
    mkdir -p /usr/share/fonts
fi
sudo cp ~/.local/share/fonts/* /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
rm -rf ./fonts

echo "Install vimrc..."
git clone https://github.com/idl-shaohua/vimrc.git
cp ./vimrc/.vimrc ~/.vimrc
rm -rf ./vimrc
