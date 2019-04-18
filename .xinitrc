setxkbmap br &
/home/arskiy/.fehbg &
compton --config /home/arskiy/.config/compton.conf &
blurwal &

#case $X_WM in
#	"bspwm"|*) exec bspwm;;
#	"dwm") exec dwm;;
#esac
exec bspwm
