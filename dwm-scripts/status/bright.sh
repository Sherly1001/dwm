
br=$(light)
br=${br%.*}
icon=' ҉'

lv5='🌑'
lv4='🌒'
lv3='🌓'
lv2='🌔'
lv1='🌕'

if [[ $((br > 70)) == 1 ]]; then
    icon=$lv5
elif [[ $((br > 50)) == 1 ]]; then
    icon=$lv4
elif [[ $((br > 30)) == 1 ]]; then
    icon=$lv3
elif [[ $((br > 10)) == 1 ]]; then
    icon=$lv2
else
    icon=$lv1
fi

echo "$icon $br%"
