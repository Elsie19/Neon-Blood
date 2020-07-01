#!/bin/bash
printf 'Vim (v) or Neovim (n) (q to quit) : '
read answer
if [[ $answer = q ]] ; then
  exit 0
fi
if [[ $answer = v ]] ; then
  wget -q -P ~/.vim/bundle/lightline.vim/autoload/colorscheme https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/lightline/NeonBlood.vim
  echo "Edit your lightline config to NeonBlood"
  exit 0
else
  wget -q -P ~/.config/nvim/bundle/lightline.vim/autoload/colorscheme https://raw.githubusercontent.com/Henryws/Neon-Blood/master/Vim/lightline/NeonBlood.vim
  echo "Edit your lightline config to NeonBlood"
  exit 0
fi
