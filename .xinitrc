xrandr --output HDMI-A-0 --rotate left --pos 0x0 --auto --left-of DisplayPort-0 --output DisplayPort-0 --primary --pos 1080x800 --dpi 102 --auto &
st -c nchat -g 75x30+15+50 nchat &
st -c gurk -g 75x25+15+1050 gurk  &
xrdb -merge $HOME/.Xresources &
setxkbmap -layout br
numlockx &
flameshot &
clipmenud &
dunst &
pipewire &
dbus-run-session dwm
