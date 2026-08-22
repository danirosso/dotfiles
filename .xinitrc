xrandr --output HDMI-A-0 --rotate left --pos 0x0 --output DisplayPort-0 --primary --mode 1920x1080 --rate 120 --pos 1080x600 &&
xwallpaper --output DisplayPort-0 --maximize $HOME/.wallpaper &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
numlockx &
pipewire &
st -c nchat -g 60x35+20+0 -e nchat &
fcitx5 -d &
exec dwm
