#!/bin/bash
mkdir -p ~/.emacs.d/themes
wget -O ~/.emacs.d/themes/Neon-Blood-Emacs.el https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Neon-Blood-Emacs.el
echo "Append or edit this part in your Doom Emacs config:" && echo ""
echo "(setq doom-theme 'Neon-Blood-Emacs)" && echo ""
echo "Append or edit this part in your Emacs config:" && echo ""
echo "(load-theme 'Neon-Blood-Emacs t)"
exit 0
