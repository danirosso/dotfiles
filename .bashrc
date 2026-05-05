# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

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
alias makest='cd $HOME/.dwm/st && sudo make clean install' 
alias makedwm='cd $HOME/.dwm/daniwm && sudo make clean install' 
export EDITOR='vim'
