#!/bin/bash

/usr/bin/amixer -qM set Master 5%+ umute

bash ~/.dwm/scripts/dwm-status-refresh.sh
