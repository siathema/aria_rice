#!/bin/sh
#Required for nvidia Optimus laptops
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
#xrandr --dpi 141.2
xrandr --output DP-0 --mode 2560x1440 --rate 165 --primary
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --right-of DP-0
#xrandr --output DVI-D-0 --mode 1920x1080 --rate 60 --left-of DP-0

#Loads user nvidia settings

xrdb ~/.Xresources

#Checks and Sources .xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

#Let's go!!!
exec i3
