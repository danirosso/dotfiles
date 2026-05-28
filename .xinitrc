xrandr --output HDMI-A-0 --auto --rotate left --pos 0x0 --output DisplayPort-0 --auto --primary --pos 1080x600 &&
xwallpaper --output DisplayPort-0 --maximize $HOME/.wallpaper &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
numlockx &
pipewire &
fcitx5 -d &
st -c whatscli -g 75x30+10+50 -e whatscli  &
st -c gurk -g 75x30+10+950 -e gurk &
exec dwm
