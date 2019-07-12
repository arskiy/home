#!/bin/sh

cp ~/.config/nvim/init.vim .config/nvim/init.vim
cp ~/.config/rofi/* .config/rofi/
cp ~/.config/bspwm/bspwmrc .config/bspwm/bspwmrc
cp ~/.config/sxhkd/sxhkdrc .config/sxhkd/sxhkdrc
cp -r ~/.config/qutebrowser/* .config/qutebrowser/

cp ~/.xinitrc .

cp -r ~/.scripts/* .scripts/

git add .
git commit -m "upload via script on $(date)"
git push
