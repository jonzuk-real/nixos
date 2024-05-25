#!/usr/bin/env bash


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
#signal-desktop &
#steam & 
firefox & 
audacious &
kitty &
hyprland-autoname-workspaces & 
#hyprdim &
# wallpaper daemon
mpvpaper -f -vs -o "no-audio loop shuffle" --slideshow 300 DP-2 /home/jon/Pictures/wallpaper
#swww init &
#swww /home/jon/Pictures/pixelcity.gif &
