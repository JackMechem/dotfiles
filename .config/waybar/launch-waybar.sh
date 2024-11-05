#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/noback/config $HOME/.config/waybar/noback/style.css $HOME/.config/waybar/desktopclock/config $HOME/.config/waybar/desktopclock/style.css"

trap "killall waybar" EXIT

while true; do
    waybar -c $HOME/.config/waybar/config -s $HOME/.config/waybar/style.css &
    waybar -c $HOME/.config/waybar/desktopclock/config -s $HOME/.config/waybar/desktopclock/style.css &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
