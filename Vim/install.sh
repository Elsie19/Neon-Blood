#!/bin/bash
printf 'Do you want to install for Vim (v) or neovim (n) : '
read arch
if [[ $arch = v ]]; then
    if [ ! -d ~/.vim/colors ]; then
        mkdir -p ~/.vim/colors;
        cd ~/.vim/colors
        https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
        printf 'Do you want to enable now? '
        read -r yesorno
        if [[ $yesorno = y ]]; then
            echo "colorscheme Neon-Blood" >> ~/.vimrc
        else
            exit 0
        fi
    fi
else
if [ ! -d ~/.config/nvim/colors ]; then
    mkdir -p ~/.config/nvim/colors;
    cd ~/.config/nvim/colors
        https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
        printf 'Do you want to enable now? '
        read -r yesorno
        if [[ $yesorno = y ]]; then
            echo "colorscheme Neon-Blood" >> ~/.config/nvim/config
        else
            exit 0
        fi
fi
