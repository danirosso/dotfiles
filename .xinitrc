xrandr --output HDMI-A-0 --auto --pos 0x0 --rotate left --output DisplayPort-0 --primary --auto --pos 1080x720 &
$HOME/.name.sh &
clipmenud &
dunst &
numlockx on &
fcitx5 &
st -t gurk -g 85x30+25+850 gurk &
st -t nchat -g 85x30+25+25 nchat &
flameshot &
xrdb -merge $HOME/.Xresources &&
exec dwm 
