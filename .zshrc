export PATH=$PATH:/home/arskiy/.local/bin:$HOME/.cargo/bin:/home/arskiy/.gem/ruby/2.6.0
export ZSH="/home/arskiy/.oh-my-zsh"
export CARGO_HOME="/home/arskiy/.cargo"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi
alias updatenum="bash -c ~/.checkupdates 2>&/dev/null | wc -l"
# Case-sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
COLORSCHEME=$(/home/arskiy/.colorscheme.py)
wal -te --theme $COLORSCHEME 2>&1 1>&/dev/null
plugins=(git rust sudo)

source $ZSH/oh-my-zsh.sh

# Exec PowerLevel 9k (theme)
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
man() {                             ✔  0.03 Dur
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_TIME_BACKGROUND='83'
POWERLEVEL9K_TIME_FOREGROUND='0'
POWERLEVEL9K_STATUS_OK_BACKGROUND='238'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='6'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='8'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='10'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="240"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="84"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)

EDITOR="vim"
alias vi="vim"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias less="bat"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
alias clearcmuscache="rm /home/arskiy/.config/cmus/cache"
function weather(){ curl -s "wttr.in"}
function hex2dec(){ python -c "print(int('$1', 16))" }
function dec2hex(){ printf "%X\n" $1 }
function asciitable(){
	
	case $1 in
   		oct|[Oo]?([Cc][Tt])|8)       Obase=Octal;  Numy=3o;;
   		hex|[Hh]?([Ee][Xx])|16|[Xx]) Obase=Hex;    Numy=2X;;
   		help|?(-)[h?])        sed -n '2,/^[ ]*$/p' $0;exit;;
   		code|[Cc][Oo][Dd][Ee])sed -n '/case/,$p'   $0;exit;;
   		*) Obase=Decimal
	esac
	export Obase   # CODE is actually shorter than the chart!

	awk 'BEGIN{print "\n\t\t## "ENVIRON["Obase"]" ASCII Chart ##\n"
           ab="soh,stx,etx,eot,enq,ack,bel,bs,tab,nl,vt,np,cr,so,si,dle,"
           ad="dc1,dc2,dc3,dc4,nak,syn,etb,can,em,sub,esc,fs,gs,rs,us,sp"
           split(ab ad,abr,",");abr[0]="nul";abr[127]="del";
           fm1="|%0'"${Numy:- 4d}"' %-3s"
           for(idx=0;idx<128;idx++){fmt=fm1 (++colz%8?"":"|\n")
           printf(fmt,idx,(idx in abr)?abr[idx]:sprintf("%c",idx))} }'
}
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar Jxvf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       rar x $1       ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip -d `echo $1 | sed 's/\(.*\)\.zip/\1/'` $1;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
alias paset="ponymix set-volume"
alias ls="lsd"
alias l="lsd -l"
alias la="lsd -la"
alias sl="lsd"
alias ks="lsd"
alias celar="clear"
alias curproj="cd ~/dev/Rust/bffm/src"
todo
echo ''
#UPNUM=$(updatenum)
#echo 'Packages to update: ' $UPNUM
fortune | cowsay | lolcat
[[ -s /home/arskiy/.autojump/etc/profile.d/autojump.sh ]] && source /home/arskiy/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

eval $(thefuck --alias)
alias tb="nc termbin.com 9999"

PATH="/home/arskiy/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/arskiy/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/arskiy/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/arskiy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/arskiy/perl5"; export PERL_MM_OPT;
