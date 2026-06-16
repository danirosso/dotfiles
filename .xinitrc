xrandr --output HDMI-A-0 --rotate left --pos 0x0 --output DisplayPort-0 --primary --pos 1080x600 &&
xwallpaper --output DisplayPort-0 --maximize $HOME/.wallpaper &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
numlockx &
pipewire &
st -c whatscli -g 60x30+10+20 -e whatscli  &
# st -c gurk -g 60x30+10+970 -e gurk &
fcitx5 -d &
exec dwm
