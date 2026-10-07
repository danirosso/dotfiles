#!/bin/sh
appname=$1 
msgbody=$3
msgurgency=$5

dir=$(dirname $(realpath $0))

if [ "$msgurgency" = "CRITICAL" ];then
    for i in $(seq 0 1); do
        mpv --really-quiet $dir/beep.wav
        sleep 0.2
    done
fi

if [ "$msgurgency" = "NORMAL" ];then
    if [ "$appname" = "nchat" ] && [ "$msgbody" = "[Left]" ] || [ "$msgbody" = "[Joined]" ];then
        sleep 1
    else
        mpv --really-quiet $dir/sound.mp3

    fi
fi

if [ "$msgurgency" = "LOW" ];then
    sleep 1;
fi
