xrandr --output HDMI-A-0 --rotate left --pos 0x0 --output DisplayPort-0 --primary --mode 1920x1080 --rate 120 --pos 1080x740 &&
xwallpaper --output DisplayPort-0 --center $HOME/.wallpaper &
xrdb -merge $HOME/.Xresources &
$HOME/.name.sh &
fcitx5 -d &
numlockx &
pipewire &
st -f "Hermit:outline=true:pixelsize=22:antialias=true:autohint=true" -c nchat -g 75x40+0+0 -e nchat  &
dbus-launch --exit-with-x11 dwm
