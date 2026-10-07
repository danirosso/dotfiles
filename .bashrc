# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\W \$ '
PS1='\[\e[1;38;2;97;99;139m\]\W\[\e[0m\] \[\e[0;38;2;101;177;178m\]\$ \[\e[0m\]'

set -o vi
alias q='clear'
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

alias ls='ls --color=always'
alias grep='grep --color=auto'
alias nsxiv='nsxiv -a'
alias o="nohup xdg-open $1 1>/dev/null &"
alias rm='rm -i -v'
alias mv='mv -i -v'
alias cp='cp -v'
alias bc='bc -l -q'
alias winej='LC_ALL=ja_JP.UTF-8 wine'

export PATH=$PATH:$HOME/.local/bin/:$HOME/Projects/danirosso/scripts/:$HOME/Projects/external/scripts/
export LESS='-N -M --RAW-CONTROL-CHARS --use-color -Dd+r -Du+b'
export EDITOR='vim'
export PAGER='less'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
 
if [ "$(tty)" == "/dev/tty1" ]; then
       	startx
fi
