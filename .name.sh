#!/bin/bash
while true; do
	getvolume=$(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ')
	getdate=$(date +' %d/%m/%y  %R')
	capstate=$(xset q | awk '/Caps Lock/ {print $4}')

	name="[$getvolume] $getdate"

	xsetroot -name " $name"

	if [ "$capstate" == "on" ]; then
		notify-send -a "capslock" "CAPS LOCK ON"
	fi

	sleep 1
done
