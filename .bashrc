# Lucas Micheloni's .bashrc.

# MY GOD WHERE ARE ALL YOUR FUNCS?!?!?!?
# in ~/.scripts

# Load PATH
export PATH=$PATH:/home/arskiy/.local/bin:$HOME/.cargo/bin:/home/arskiy/.gem/ruby/2.6.0:/home/arskiy/.scripts:/home/arskiy/.scripts/notifications:/home/arskiy/.scripts/dmenu

# Load a Cargo (Rust's library manager) env var
export CARGO_HOME="/home/arskiy/.cargo"

# Load theme
wal -te --theme vscode 2>&1 1>&/dev/null

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start X if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

# case unsensitive tab completion
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# for some reason my S key doesnt works after the above commands. this solves it
bind ""s" self-insert"

# load colored prompt
color(){
  local __user_and_host="\[\033[01;32m\]╭"
  local __cur_location="\[\033[01;34m\]\w"
  local __git_branch_color="\[\033[31m\]"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\n\[\033[01;32m\]╰\[\033[214m\] λ"
  local __last_color="\[\033[00m\]"
  export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}

color

#
# load *some* aliases
#
alias vi="nvim"
alias v="nvim"

# rick roll on the terminal!
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias less="bat --plain"
alias dog="bat --plain"
alias cat="bat --plain"

# my pdf reader
alias zathura="zathura --fork"

# make it easier to set pulseaudio's volume
alias paset="ponymix set-volume 1>&/dev/null"

# typos...
alias ls="lsd"
alias l="lsd -l"
alias la="lsd -la"
alias sl="lsd"
alias ks="lsd"
alias celar="clear"

# jump to current project faster
alias curproj="cd ~/dev/"
alias vim="nvim"
alias rust="cd ~/dev/Rust"

# tool for sharing code
alias h="haste | xclip -i"
eval $(thefuck --alias)

todo
fortune | cowsay | lolcat
ls -t
