
v_up=''
v_down=''
v_off=''
v_mute=''

icon=''
[[ `~/dwm/dwm-scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker
vl="$(amixer get $mt | sed -n '/\[/{s/.*\[\(.*\)%.*/\1/p; q0}')"

if [[ $(amixer get Master | grep '\[off\]') ]]; then
    icon=$v_mute
elif [[ $vl -le 20 ]]; then
    icon=$v_off
elif [[ $vl -le 50 ]]; then
    icon=$v_down
elif [[ $vl -le 70 ]]; then
    icon=$v_up
fi

echo "$icon $vl"
