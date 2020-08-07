
pin="$(cat /sys/class/power_supply/BAT0/capacity)"
st="$(cat /sys/class/power_supply/BAT0/status)"
# Discharging | Full | Charging
icon='⚛️'

if [[ $st == 'Charging' ]]; then
    icon='⚡️'
elif [[ $st == 'Full' ]]; then
    icon='♾️'
fi

echo "$icon $pin%"
