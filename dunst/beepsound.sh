#!/bin/sh
appname=$1 
msgbody=$3

if [ $appname = "nchat" ] && [ $msgbody = "[Left]" ] || [ $msgbody = "[Joined]" ];then
    sleep 1;
else
for i in $(seq 0 1); do
    mpv --quiet $HOME/.config/dunst/beep.wav
    sleep 0.2
done
fi
