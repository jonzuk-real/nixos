#!/usr/bin/env bash

# wallpaper daemon
#swww init &
#swww img &


# network applet
nm-applet --indicator &


#notifications
swaync &
swaynoficationcenter &


# top bar
waybar &
 

#night light
darkman run& 
gammastep -t 5000k:2700k &
lxqt-policykit-agent &
xhost +local: &


#apps 
signal-desktop &
steam & 
firefox & 
audacious &
kitty &

