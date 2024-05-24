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


# wallpaper daemon
mpvpaper -vs -o "no-audio loop" DP-2 /home/jon/nixos/wallpaper/mylivewallpapers-com-Pebbles-4K.mp4
#swww init &
#swww /home/jon/Pictures/pixelcity.gif &
