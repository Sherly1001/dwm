
[[ `~/dwm/dwm-scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker

amixer set $mt $1
