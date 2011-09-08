#!/bin/bash

# keyboard
setxkbmap us mac

# keyboard repeat rate
xset r rate 250 50

# redshift
redshift -l 49.14:7.0 -t 5700:3600 -g 0.8 -m vidmode &

# disable "screensaver"
xset -dpms
xset s off

# wmii
#wmiilogdate="$HOME/logs/`date +%Y%m%d-%H%M%S`.wmii.log"
#exec wmii
#>${wmiilogdate} 2>&1

# i3
exec i3

# Gnome3
#exec ck-launch-session gnome-session
