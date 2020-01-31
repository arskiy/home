cp ~/bin/* bin -r
cp ~/usr/src/* ./usr/src
cp ~/etc/bash.d/* etc/bash.d/
cp ~/etc/xorg.d/* etc/xorg.d/ -r
cp ~/etc/configuration.nix etc/
cp ~/etc/config.d/nvim/init.vim etc/config.d/nvim/
cp ~/etc/config.d/bspwm/* etc/config.d/bspwm/
cp ~/etc/config.d/sxhkd/* etc/config.d/sxhkd/
cp ~/etc/config.d/doom/* etc/config.d/doom/
cp ~/etc/config.d/doom/org/doom-notes.org etc/config.d/doom/org/
cp ~/etc/config.d/compton/* etc/config.d/compton/
cp ~/etc/config.d/zathura/* etc/config.d/zathura/ -r
cp ~/etc/config.d/dunst/* etc/config.d/dunst/ -r
cp ~/etc/config.d/polybar/* etc/config.d/polybar/ -r
cp ~/etc/config.d/rofi/* etc/config.d/rofi/ -r
cp ~/etc/config.d/windowchef/* etc/config.d/windowchef/ -r

git add .
git commit -m "upload config $(date)"
git push
