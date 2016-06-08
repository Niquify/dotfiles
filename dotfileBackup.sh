#!/bin/bash

DATE=$( date+'%d:%M:Y' )

cd dotfiles
git pull
cd ..
cp .i3/config dotfiles/.i3/
cp .i3/i3blocks.conf dotfiles/.i3/
cp .i3/scripts/* dotfiles/.i3/scripts
cp .Xresources dotfiles/
cp .bash_aliases dotfiles/
cp .fonts/* dotfiles/fonts
Descargas/pkginstalls.sh
cp pkginstalls.txt dotfiles/
cd dotfiles
git add *
git commit -m "Automatic backup $DATE"
git push

