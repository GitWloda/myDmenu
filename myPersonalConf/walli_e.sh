#!/usr/bin/env bash

while [[ true ]] ; do
	wal -q -i ~/.config/wallpaper
	bash ~/.config/polybar/launch.sh
	~/.config/myPersonalConf/changeColorGlave.sh
sleep 3600
done
