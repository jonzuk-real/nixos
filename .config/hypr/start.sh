#!/usr/bin/env bash

# wallpaper daemon
#swww init &
#swww img &


# network applet
nm-applet --indicator &

#notifications
swaync &

# top bar
waybar &


swaynoficationcenter& 

darkman run& 
gammastep -t 5000k:2700k&
lxqt-policykit-agent&
xhost +local:&

kitty&
audacious
& clematis
& discord
& steam
