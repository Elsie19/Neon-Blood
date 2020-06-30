#!/bin/bash
echo "enter y or n for each app" && echo ""
printf "Alacritty"
read -r alacritty
if [[ $alacritty = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Alacritty/install.sh | bash
    exit 0
fi
printf "Emacs"
read -r emacs
if [[ $emacs = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Emacs/install.sh | bash
    exit 0
fi
printf "Gedit"
read -r gedit
if [[ $gedit = y ]] ; then
    sudo -qO- wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Gedit/install.sh | bash
    exit 0
fi
printf "Gnome-Terminal"
read -r gnometerminal
if [[ $gnometerminal = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Gnome-Terminal.sh | bash
    exit 0
fi
printf "Termite"
read -r termite
if [[ $termite = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Termite/install.sh | bash
    exit 0
fi
printf "Vim/NVim"
read -r VIM
if [[ $VIM = y ]] ; then
    wget -qO- https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/install.sh | bash
    exit 0
fi
printf "Xresources"
read -r xresources
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
