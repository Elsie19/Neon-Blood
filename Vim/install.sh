#!/bin/bash
printf 'Do you want to install for Vim (v) or neovim (n) : '
read arch
if [[ $arch = v ]]; then
    if [ ! -d ~/.vim/colors ]; then
        mkdir -p ~/.vim/colors;
        cd ~/.vim/colors
        wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
        printf 'Do you want to enable now? '
        read -r yesorno
        if [[ $yesorno = y ]]; then
            echo "colorscheme Neon-Blood" >> ~/.vimrc
        else
            exit 0
        fi
    fi
else
    cd ~/.config/nvim/colors
    wget -q https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
    printf 'Do you want to enable now? '
    read -r yesorno
    if [[ $yesorno = y ]]; then
        echo "colorscheme Neon-Blood" >> ~/.config/nvim/config
    else
        exit 0
    fi
fi
