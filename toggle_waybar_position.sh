#!/bin/bash

current_position=$(grep '"position":' ~/.config/waybar/config | awk -F'"' '{print $4}')

if [ "$current_position" = "top" ]; then
    sed -i 's/"position": "top"/"position": "bottom"/' ~/.config/waybar/config
else
    sed -i 's/"position": "bottom"/"position": "top"/' ~/.config/waybar/config
fi

killall waybar
waybar &
