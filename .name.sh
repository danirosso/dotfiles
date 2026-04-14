#!/bin/bash
while true; do
	xsetroot -name " V: $(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ') S: $(cat $HOME/.cache/nchatnoti) $(date +' %d/%m/%y  %R')"
	if [[ "$(xdotool getwindowfocus getwindowname)" == nchat ]]; then
		echo 0 > $HOME/.cache/nchatnoti
	fi
sleep 1
done
