# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\A [\u\[\e[90m\]@\[\e[38;5;22m\]\h]\[\e[0m\] \w \\$ '

PATH="$PATH:$HOME/.local/share/bin"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias xbps.remove='sudo xbps-remove -Ro'
alias xbps.query='xbps-query -Rs'
alias xbps.install='sudo xbps-install -Syu'
alias makest='cd $HOME/.dwm/st && vim config.def.h && read &&  sudo make clean install && cd' 
alias makedwm='cd $HOME/.dwm/daniwm && vim config.def.h && read && sudo make clean install && cd' 
alias m2c="xclip -o -selection primary 2>/dev/null | xclip -i -selection clipboard"

export EDITOR='vim'
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

NNN_PLUG="p:preview-tabbed;s:cpath;"
export NNN_PLUG
export NNN_FIFO=/tmp/nnn.fifo
alias nnn='nnn -H -o'

if [ "$(tty)" == "/dev/tty1" ]; then
       	startx
fi
