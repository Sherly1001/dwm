#!/usr/bin/sh

# native scroll
xinput set-prop 'DELL0844:00 04F3:3074 Touchpad' 'libinput Tapping Enabled' 1 &
# tab on touchpad
xinput set-prop 'DELL0844:00 04F3:3074 Touchpad' 'libinput Natural Scrolling Enabled' 1 &

# xcompmgr for transparent window
xcompmgr -c &

# turn on numlock
numlockx &

# .xbindkeysrc
xbindkeys -p &

~/dwm/dwm-scripts/ibus.sh &
~/dwm/dwm-scripts/bg.sh &

while true; do
    ~/dwm/dwm-scripts/rootname.sh &
    sleep 5s
done &

flameshot &

while true; do
    dwm
    sleep 3s
done
