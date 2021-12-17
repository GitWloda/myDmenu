#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#set italian keyboard
setxkbmap it &

#set resolution monitor and TV
nvidia-settings --assign CurrentMetaMode="HDMI-0: 1366x768_60 +275+0 {viewportin=1920x1080}, DP-2: 1920x1080_144 +1336+1080 {AllowGSYNCCompatible=On}, DVI-D-0: 1280x1024_75 +0+1080 {viewportin=1336x1080}; HDMI-0: nvidia-auto-select +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1920x1080 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1920x1080_50 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1920x1080_24 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1920x1080_60i +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1920x1080_50i +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1280x768 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1280x720 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1280x720_60_0 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1280x720_50 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 1024x768 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 800x600 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 800x600_56 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 720x576 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 720x480 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 640x480 +330+0, DVI-D-0: nvidia-auto-select +0+1080; HDMI-0: 640x480_60_0 +330+0, DVI-D-0: nvidia-auto-select +0+1080"

#set numlock
numlockx &

#set picom
#picom --experimental-backends &

#set notific deamon
dunst &

#set wallpaper
$HOME/.config/myPersonalConf/walli_e.sh &

#start alacritty on menu
$HOME/.config/myPersonalConf/risolviMic.sh &

#start i3WM
xrdb /home/phi/.Xresources
alacritty &
exec i3
