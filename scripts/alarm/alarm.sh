#!/bin/sh

alarmtime="$1 $2"
plustime="$3"
directory=$(dirname $(realpath "$0"))

if [ "$plustime" = "+" ]; then
	alarmtime=$(date --date="+$1hours +$2minutes" +'%H %M')
fi

while true; do

	timern=$(date +'%H %M')

	echo "Clock: $timern"
	echo "Alarm: $alarmtime"

	if [ "$timern" = "$alarmtime" ]; then
		wpctl 1>&2 2>/dev/null set-volume @DEFAULT_SINK@ 0.8
		mpv --quiet --no-config --loop $directory/digital_alarm.mp3
		echo alarm!
	fi

	sleep 29

	clear
done
