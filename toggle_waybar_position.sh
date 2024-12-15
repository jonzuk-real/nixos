#!/bin/bash

current_position=$(grep '"position":' /home/jon/.config/waybar/config | awk -F'"' '{print $4}')

if [ "$current_position" = "top" ]; then
    sed -i 's/"position": "top"/"position": "bottom"/' /home/jon/.config/waybar/config
else
    sed -i 's/"position": "bottom"/"position": "top"/' /home/jon/.config/waybar/config
fi

killall waybar
waybar &
