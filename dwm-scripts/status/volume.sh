
icon='◂'
vl="$(amixer get Master | awk -F '[][]' '/dB/ { print $2 }')"
echo "$icon $vl"
