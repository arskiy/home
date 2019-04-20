setxkbmap br &
/home/arskiy/.fehbg & # dont wait for bing-wallpaper to load
bing-daily-wallpaper 2>&1 1>&/dev/null &
polybar -c /home/arskiy/.config/polybar/config.ini cyber &
polybar -c /home/arskiy/.config/polybar/config.ini top &
compton --config /home/arskiy/.config/compton.conf &
blurwal &

# Load .Xresources
# [[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#case $X_WM in
#	"bspwm"|*) exec bspwm;;
#	"dwm") exec dwm;;
#esac
exec bspwm
