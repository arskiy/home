# Lucas Micheloni's .bashrc.

# MY GOD WHERE ARE ALL YOUR FUNCS?!?!?!?
# in ~/.scripts

# Load PATH
source ~/.env_vars

# Start X if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

source ~/.funcs

#
# load *some* aliases
#
source ~/.aliases
source ~/Files/emsdk/emsdk_env.sh 2>&1>/dev/null

todo
fortune | cowsay | lolcat
ls -t
