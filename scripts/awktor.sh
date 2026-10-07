#!/bin/sh

index=$1

while true; do

    does=$(transmission-remote -t $index -l | awk   '/%/ {print xor($2, "%")}')

    if [ "$does" -eq "100" ] ; then

        for x in $(seq 1 5); do
        notify-send "Download Finished"
        sleep 1
    done

    break
    fi

    notify-send -u "low" "$does%"

    sleep 1;

done
