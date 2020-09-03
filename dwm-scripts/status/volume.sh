
v_up=''
v_down=''
v_off=''
v_mute=''

icon=''
[[ `~/dwm/dwm-scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker
vl="$(amixer get $mt | awk -F '[][]' '/dB/ { print $2; exit }')"

if [[ $(amixer get Master | grep '\[off\]') ]]; then
    icon=$v_mute
elif [[ $vl < '20%' ]]; then
    icon=$v_off
elif [[ $vl < '50%' ]]; then
    icon=$v_down
elif [[ $vl < '70%' ]]; then
    icon=$v_up
fi

echo "$icon $vl"
