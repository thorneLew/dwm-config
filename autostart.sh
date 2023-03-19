#!/bin/bash


pulseaudio --start
pulseaudio -k 
pulseaudio --start
fcitx5 -d
/bin/bash ~/.dwm/scripts/dwm-status.sh &
/bin/bash ~/.dwm/scripts/window-bg-autochange.sh &
picom -b
xfce4-power-manager &
redshift -l 39.916668:116.383331 &
xautolock -time 30 -locker slock
# /bin/bash ~/.dwm/scripts/autostart_wait.sh &
