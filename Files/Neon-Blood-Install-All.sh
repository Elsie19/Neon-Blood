#!/bin/bash
echo "enter y or n for each app" && echo ""
printf "Alacritty"
read -r alacritty
printf "Emacs"
read -r emacs
printf "Gedit"
read -r gedit
printf "Gnome-Terminal"
read -r gnometerminal
printf "Termite"
read -r termite
printf "Vim/NVim"
read -r VIM
printf "Xresources"
read -r xresources

if [[ $alacritty = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Alacritty/install.sh | bash
    exit 0
fi
if [[ $emacs = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Emacs/install.sh | bash
    exit 0
fi
if [[ $gedit = y ]] ; then
    sudo -qO- wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Gedit/install.sh | bash
    exit 0
fi
if [[ $gnometerminal = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Gnome-Terminal.sh | bash
    exit 0
fi
if [[ $termite = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Termite/install.sh | bash
    exit 0
fi
if [[ $VIM = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/install.sh | bash
    exit 0
fi
if [[ $xresources = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Xresources/install.sh | bash
    exit 0
fi
echo "Done!"
if [[ $? -eq 1 ]] ; then
    exit 1
else
    exit 0
fi
