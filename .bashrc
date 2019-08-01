# Lucas Micheloni's .bashrc.

# MY GOD WHERE ARE ALL YOUR FUNCS?!?!?!?
# in ~/.scripts

# Load PATH
source ~/.env_vars

# Start X if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

bind ""s" self-insert"

source ~/.funcs

#
# load *some* aliases
#
source ~/.aliases


todo
fortune | cowsay | lolcat
ls -t
