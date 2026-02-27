#!/bin/bash
while true; do
	xsetroot -name " V: $(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ') S: $(cat $HOME/.cache/signoti) $(date +' %d/%m/%y  %R')"
	if [[ "$(xdotool getwindowfocus getwindowname)" == gurk ]]; then
		echo 0 > $HOME/.cache/signoti
	fi
sleep 1
done
