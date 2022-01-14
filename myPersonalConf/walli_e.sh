#!/usr/bin/env bash

while [[ true ]] ; do
	wal -q -i ~/.config/wallpaper
	bash ~/.config/polybar/launch.sh
	~/.config/myPersonalConf/changeColorGlave.sh
	pywal-discord -t abou
	wpg -s ~/.config/wallpaper/ ; timeout 0.5s xsettingsd -c ~/.config/xsettingsd/xsettingsd.conf
sleep 3600
done
