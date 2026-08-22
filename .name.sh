#!/bin/sh
while true; do
#	getbat=$(cat /sys/class/power_supply/BAT0/capacity)
	getvolume=$(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ')
	getdate=$(date +' %d/%m/%y  %R')
	capstate=$(xset q | awk '/Caps Lock/ {print $4}')

#	name="($getbat) [$getvolume] $getdate"
	name="[$getvolume] $getdate"

	xsetroot -name " $name"

	if [ "$capstate" = "on" ] ; then
		notify-send -t 1100 -a "capslock" "CAPS LOCK ON"
	fi

	sleep 1

done
