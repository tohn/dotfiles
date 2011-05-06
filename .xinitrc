#!/bin/bash

# keyboard
setxkbmap us mac

# keyboard repeat rate
xset r rate 250 50

# windowmanager
if [[ ! -d $HOME/logs ]] ; then
	mkdir $HOME/logs
fi
wmiilogdate="$HOME/logs/`date +%Y%m%d-%H%M%S`.wmii.log"
#exec wmii >${wmiilogdate} 2>&1
exec ck-launch-session gnome-session
