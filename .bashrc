# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\A [\u\[\e[90m\]@\[\e[38;5;22m\]\h]\[\e[0m\] \w \\$ '

PS1='\W \$ ' 
 
PATH="$PATH:$HOME/.local/share/bin"

set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i -v'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias maimclip="maim -s -b 4 -c 0,0.33,0.46 | xclip -selection clipboard -t image/png"
alias maimsave="maim -s -b 4 -c 0,0.33,0.46 | tee $HOME/Images/maim_$(date +%s).png | xclip -selection clipboard -t image/png"
alias nsxiv="nsxiv -a"
alias bc="bc -l -q"
alias bt="bluetoothctl"
alias wine="LC_ALL=ja_JP.UTF-8 wine"
alias arquivo-x="nnn /var/lib/transmission/Downloads/T*" 

export LESS='-M --RAW-CONTROL-CHARS --use-color -Dd+r -Du+b'
export EDITOR='vim'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

export NNN_PLUG="p:preview-tabbed;s:cpath;"
export NNN_FIFO=/tmp/nnn.fifo
alias nnn='nnn -H -o'

if [ "$(tty)" == "/dev/tty1" ]; then
       	startx
fi
