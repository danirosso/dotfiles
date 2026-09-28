# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\W \$ '
PS1='\[\e[1;38;2;97;99;139m\]\W\[\e[0m\] \[\e[0;38;2;101;177;178m\]\$ \[\e[0m\]' #\[\e[0;38;2;187;187;187m\] ' 
PATH="$PATH:$HOME/Projects/dani/scripts:$HOME/.local/share/bin"

set -o vi
alias q='clear'
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=erasedups

alias ls='ls --color=always'
alias lsp='realpath $(ls)'
alias grep='grep --color=always'
alias rm='rm -i -v'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias nsxiv="nsxiv -a"
alias bc="bc -l -q"
alias bt="bluetoothctl"
alias winej="LC_ALL=ja_JP.UTF-8 wine"

export LESS='-S#3 -N -M --RAW-CONTROL-CHARS --use-color -Dd+r -Du+b'
export EDITOR='vim'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
 
export NNN_PLUG="p:preview-tabbed;s:cpath;"
export NNN_FIFO=/tmp/nnn.fifo
alias nnn='nnn -d -H -o -e'
 
if [ "$(tty)" == "/dev/tty1" ]; then
       	startx
fi
