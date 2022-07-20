#!/bin/bash
# Colors
cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"

clear

mkdir ~/.local/share/fonts
cp -R IosevkaTermNerdFontComplete.ttf ~/.local/share/fonts

stow dotfiles/*/ --target=$HOME

printf "${cr} SEE packages-repository.txt to see recomended programs to install\n"
