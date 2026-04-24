#!/bin/bash
while true; do
	nchatnoti=$(cat $HOME/.cache/nchatnoti)
	gurknoti=$(cat $HOME/.cache/gurknoti)
	getwindow=$(xdotool getwindowfocus getwindowname)
	getvolume=$(wpctl 2>/dev/null get-volume @DEFAULT_SINK@| awk ' {print $2 * 100} ')
	getdate=$(date +' %d/%m/%y  %R')

	name="V: $getvolume $getdate"
	if [[ "$gurknoti" > 0 ]]; then
		name="G: $gurknoti $name"
	fi
	if [[ "$nchatnoti" > 0 ]]; then
		name="N: $nchatnoti $name"
	fi


	if [[ "$getwindow" == "nchat" ]]; then
		echo 0 > $HOME/.cache/nchatnoti
	fi
	if [[ "$getwindow" == "gurk" ]]; then
		echo 0 > $HOME/.cache/gurknoti
	fi

	xsetroot -name " $name"
	sleep 1
done
