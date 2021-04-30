#!/usr/bin/env bash

if [[ "${1}" == "--help" ]] || [[ "${1}" == "-h" ]] || [[ "${1}" == "help" ]]; then
    cat << 'EOF'

dmenu_shot provides a menu with set of custom commands to
perform some simple automated image manipulation on screenshots
taken using Flameshot, and then putting them into clipboard.


Commands:
    -h, --help    To show this help


Menu:
    Trim:         It just trims the extra spaces around the
                   selected region.
    Remove_white: Useful to remove the white background. It will
                   replace white with transparent.
    Negative:     Convert the image to negative colors.


Author:
    Mehrad Mahmoudian


Git repository for bug report and contributions:
    https://codeberg.org/mehrad/dmenu_shot
EOF
    exit 0
fi


RET=$(echo -e "Trim\nRemove_white\nNegative\nBordered\nCancel" | dmenu -i -fn "UbuntuMono Nerd Font:size=11" -nb "#222222" -nf "#ff7824" -sb "#ff7824" -sf "#222222" -p "Select screenshot type:")

case $RET in
    Trim)
        flameshot gui --raw \
            | convert png:- -trim png:- \
            | xclip -selection clipboard -target image/png
        ;;
    Remove_white)
        flameshot gui --raw \
            | convert png:- -transparent white -fuzz 90% png:- \
            | xclip -selection clipboard -target image/png
        ;;
    Negative) 
        flameshot gui --raw \
            | convert png:- -negate -channel RGB png:- \
            | xclip -selection clipboard -target image/png
        ;;
    Bordered)
        flameshot gui --raw \
            | convert png:- -bordercolor red -border 3 png:- \
            | xclip -selection clipboard -target image/png
        ;;
	*) ;;
esac

