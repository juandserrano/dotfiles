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
run "solaar" -w hide
# run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/
run "variety"
run "/home/jserr/Applications/Nextcloud-3.9.1-x86_64_3f2fe81116752503d9264a6d382e0500.AppImage"
run "steam" -silent
run "thunderbird"

sleep 3
run "volumeicon"
run "xset" r rate 250 50

