#!/bin/sh

nitrogen --restore &
picom -f &
xrdb -merge ~/.cache/wal/rofi.xres &
sh $HOME/.config/polybar/launch.sh
