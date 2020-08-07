
while true; do
    pin=$(~/dwm/dwm-scripts/status/pin.sh)
    td=$(~/dwm/dwm-scripts/status/time.sh)
    br=$(~/dwm/dwm-scripts/status/bright.sh)
    vl=$(~/dwm/dwm-scripts/status/volume.sh)
    
    xsetroot -name " $br | $pin | $vl | $td"
    sleep 5s
done
