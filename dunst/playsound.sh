#!/bin/sh 

appname=$1 
msgbody=$3

if [ $appname = "nchat" ] && [ $msgbody = "[Left]" ] || [ $msgbody = "[Joined]" ];then
    sleep 1;
else
    mpv --quiet $HOME/.config/dunst/sound.mp3
fi
