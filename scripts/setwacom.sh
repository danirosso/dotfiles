#!/bin/sh

stylus=$(xsetwacom list | awk '/stylus/ {print $9}')

xsetwacom set $stylus mapToOutput HDMI-A-0 &&
xsetwacom set $stylus rotate ccw &&
xsetwacom set $stylus threshold 100
