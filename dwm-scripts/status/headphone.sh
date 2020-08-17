echo `amixer -c 0 contents | awk -F, '/Headphone Mic Jack/ {c=1} c && /: values/ {split($0, a, "="); print a[2]; exit}'`
