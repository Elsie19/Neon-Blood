#!/bin/bash
echo "this script will append the colors to the end of ~/.config/alacritty/alacritty.yml"
echo "Is this okay?"
read okay
if [[ $okay = y ]]; then
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Alacritty.txt >> ~/.config/alacritty/alacritty.yml
else
    echo "Copy and paste this text into your config:"
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Alacritty.txt
fi
