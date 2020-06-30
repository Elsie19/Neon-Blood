#!/bin/bash
echo "this script will append the colors to the end of ~/.config/alacritty/alacritty.yml"
printf 'Is this okay? '
read -r okay
if [[ $okay = y ]]; then
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Alacritty.txt >> ~/.config/alacritty/alacritty.yml
    exit 0
else
    echo "Copy and paste this text into your config:"
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Alacritty.txt
    exit 0
fi
