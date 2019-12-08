# Lucas Micheloni's .bashrc.

# MY GOD WHERE ARE ALL YOUR FUNCS?!?!?!?
# in ~/.scripts

# Load PATH
source ~/.env_vars
source ~/.scripts/bash-wakatime.sh

# Start X11 if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
    sudo netctl start wlp3s0PitucaPlus
    sudo systemctl stop dhcpcd
fi

source ~/.funcs

#
# load *some* aliases
#
source ~/.aliases

todo
fortune | cowsay | lolcat
ls -t
