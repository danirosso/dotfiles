xrandr --output HDMI-A-0 --auto --pos 0x0 --rotate left --output DisplayPort-0 --primary --auto --pos 1080x720 &
$HOME/.name.sh &
clipmenud &
dunst &
numlockx on &
fcitx5 &
st -t nchat -g 80x40+15+100 nchat &
flameshot &
xrdb -merge $HOME/.Xresources &&
exec dwm 
