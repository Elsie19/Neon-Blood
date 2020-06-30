#!/bin/bash
enter "y or n for each app" && echo ""
echo "Alacritty"
read alacritty
echo "Emacs"
read emacs
echo "Gedit"
read gedit
echo "Gnome-Terminal"
read gnometerminal
echo "Termite"
read termite
echo "Vim/NVim"
read VIM
echo "Xresources"
read xresources

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
