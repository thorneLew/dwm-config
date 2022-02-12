#!/bin/bash

fcitx5 -d
feh --bg-fill ~/Images/wallpaper

/bin/bash ~/.dwm/scripts/dwm-status.sh &
picom -b
