
icon='◂'
[[ `~/dwm/dwm-scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker
vl="$(amixer get $mt | awk -F '[][]' '/dB/ { print $2; exit }')"
echo "$icon $vl"
