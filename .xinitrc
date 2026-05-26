xrandr --output HDMI-A-0 --auto --rotate left --pos 0x0 --output DisplayPort-0 --auto --primary --pos 1080x600 &&
$HOME/.fehbg &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
numlockx &
clipmenud &
pipewire &
fcitx5 -d &
st -c whatscli -g 75x30+10+50 -e whatscli  &
st -c gurk -g 75x30+10+950 -e gurk &
exec dwm
