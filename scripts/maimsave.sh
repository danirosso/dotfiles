#!/bin/sh
maim -s -b 4 -c 0,0.33,0.46 | tee $HOME/Images/maim_"$(date +%s)".png | xclip -selection clipboard -t image/png
