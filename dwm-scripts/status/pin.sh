
pin_1p1=''
pin_3p4=''
pin_1p2=''
pin_1p4=''
pin_0p1=''

pin="$(cat /sys/class/power_supply/BAT0/capacity)"
st="$(cat /sys/class/power_supply/BAT0/status)"
# Discharging | Full | Charging
icon=''

if [[ $pin < '10' ]]; then
    icon=$pin_0p1
elif [[ $pin < '30' ]]; then
    icon=$pin_1p4
elif [[ $pin < '55' ]]; then
    icon=$pin_1p2
elif [[ $pin < '75' ]]; then
    icon=$pin_3p4
else
    icon=$pin_1p1
fi

if [[ $st == 'Charging' ]]; then
    icon=''
elif [[ $st == 'Full' ]]; then
    icon=''
fi

echo "$icon $pin%"
