xrandr --output HDMI-A-0 --rotate left --pos 0x0 --output DisplayPort-0 --primary --pos 1080x600 &
st -c nchat -g 75x30+15+50 nchat &
st -c gurk -g 75x25+15+1050 gurk  &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
setxkbmap -layout br &
numlockx &
clipmenud &
dunst &
pipewire &
dbus-run-session dwm
