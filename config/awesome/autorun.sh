#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

# Always
run "xrandr" --output HDMI-0 --mode 3440x1440 --rate 99.99
run "picom" -b
run "nm-applet"
# run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/
run "variety"
run "steam" -silent

sleep 3
run "volumeicon"
run "xset" r rate 250 50

