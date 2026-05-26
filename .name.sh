#!/bin/bash
while true; do
	getvolume=$(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ')
	getdate=$(date +' %d/%m/%y  %R')

	name="[$getvolume] $getdate"

	xsetroot -name " $name"
	sleep 1
done
