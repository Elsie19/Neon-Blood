#!/bin/bash
echo "enter y or n for each app" && echo ""
read -p "Alacritty " alacritty
if [[ "$alacritty" = y ]] ; then
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Alacritty.txt >> ~/.config/alacritty/alacritty.yml
fi
read -p "Emacs " emacs
if [[ "$emacs" = y ]] ; then
    mkdir -p ~/.emacs.d/themes
    wget -O ~/.emacs.d/themes/Neon-Blood-theme.el https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Neon-Blood-theme.el
    echo "Append or edit this part in your Doom Emacs config:" && echo ""
    echo "(setq doom-theme 'Neon-Blood)" && echo ""
    echo "Append or edit this part in your Emacs config:" && echo ""
    echo "(load-theme 'Neon-Blood t)"
fi
read -p "Gedit " gedit
read -r gedit
if [[ "$gedit" = y ]] ; then
    sudo wget -O /usr/share/gtksourceview-3.0/styles/Neon-Blood-gedit.xml https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Neon-Blood-gedit.xml
fi
read -p "Gnome Terminal " gnometerminal
if [[ "$gnometerminal" = y ]] ; then
    wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Gnome-Terminal.sh | bash
fi
read -p "Termite " termite
if [[ "$termite" = y ]] ; then
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Termite.txt >> ~/.config/termite/config
fi
read -p "Vim " VIM
if [[ "$VIM" = y ]] ; then
    mkdir -p ~/.vim/colors;
    cd ~/.vim/colors && wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
fi
read -p "Neovim " NVIM
if [[ "$NVIM" = y ]] ; then
    mkdir -p ~/.config/nvim/colors;
    cd ~/.config/nvim/colors && wget https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/Neon-Blood.vim
fi
read -p "Xresources " xresources
if [[ "$xresources" = y ]] ; then
    curl https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Xresources.txt >> ~/.Xresources
fi
echo "Done!"
if [[ $? -eq 1 ]] ; then
    exit 1
else
    exit 0
fi
