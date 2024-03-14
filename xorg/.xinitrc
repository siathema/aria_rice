#!/bin/sh
#Required for nvidia Optimus laptops
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
#xrandr --dpi 141.2

#Loads user nvidia settings

xrdb ~/.Xresources

#Checks and Sources .xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

#Let's go!!!
exec i3
