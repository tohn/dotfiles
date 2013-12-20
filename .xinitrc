#!/bin/bash

### Settings ###

# keyboard
setxkbmap us mac
# change CapsLock to Escape
#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
# http://blog.rootserverexperiment.de/2013/09/05/caps-lock-auf-shift-umbelegen-linux-und-windows/
#xmodmap -e 'remove Lock = Caps_Lock'
#xmodmap -e 'keysym Caps_Lock = Escape'

# keyboard repeat rate
xset r rate 250 50

# redshift
redshift -l 49.14:7.0 -t 5700:3600 -g 0.8 -m vidmode &

# disable "screensaver"
#xset -dpms
xset s off
xset dpms 3600 3600 3600

# disable beep
xset b off

# transparency
#xcompmgr -c -t-5 -l-5 -r4.2 -o.55 &

# disable touchpad
xinput set-int-prop "SynPS/2 Synaptics TouchPad" "Synaptics Off" 8 1

# amixer
amixer -c 0 set PCM 100%
amixer -c 0 set Master 80%

# numpad
#numlockx off

# set wallpaper
$HOME/repos/bin/chwp.sh

# mount
# http://jasonwryan.com/blog/2013/10/28/dismount/
# https://wiki.archlinux.org/index.php/Udiskie
udiskie &

### DEs/WMs ###

# wmii
#exec wmii

# i3
#exec i3

# Gnome3
#exec ck-launch-session gnome-session

# dwm
while true ; do
	xsetroot -name "$($HOME/repos/bin/dwm_status.sh)"
	sleep 1s
done &

# run!
#exec dwm
$HOME/repos/bin/startdwm.sh
