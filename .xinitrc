#!/usr/bin/sh

# native scroll
xinput set-prop 'DELL0844:00 04F3:3074 Touchpad' 'libinput Tapping Enabled' 1 &
# tab on touchpad
xinput set-prop 'DELL0844:00 04F3:3074 Touchpad' 'libinput Natural Scrolling Enabled' 1 &

# picom for transparent window
picom --config ~/dwm/picom/picom.conf

# turn on numlock
numlockx &

# .xbindkeysrc
xbindkeys -p &

flameshot &
amixer set Master 100 &
amixer set Speaker 70% &
amixer set Headphone 30% &

~/dwm/dwm-scripts/ibus.sh &
~/dwm/dwm-scripts/bg.sh &

while true; do
    ~/dwm/dwm-scripts/rootname.sh
    sleep 5s
done &

while true; do
    dwm
    sleep 3s
done
