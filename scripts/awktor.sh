#!/bin/sh

index=$1

while true; do

    does=$(transmission-remote -l -t $index | awk   '/%/ {print xor($2, "%")}')

    if [ "$does" -eq "100" ] ; then
        notify-send "Download Finished"
    fi

    sleep 1;

done
