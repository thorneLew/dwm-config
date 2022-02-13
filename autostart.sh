#!/bin/bash

fcitx5 -d
/bin/bash ~/.dwm/scripts/dwm-status.sh &
/bin/bash ~/.dwm/scripts/window-bg-autochange.sh &
picom -b
xfce4-power-manager &
# /bin/bash ~/.dwm/scripts/autostart_wait.sh &
