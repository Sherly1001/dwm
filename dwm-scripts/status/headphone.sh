echo `amixer -c 0 contents | sed -n '/Headphone Mic Jack/,/  :/s/:.*=//p'`
