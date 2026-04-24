# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ "$(tty)" == "/dev/tty1" ]; then
       	startx
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias xbps.query='xbps-query -Rs'
alias xbps.install='sudo xbps-install -Syu'

PS1='[\u@\h \W]\$ '
