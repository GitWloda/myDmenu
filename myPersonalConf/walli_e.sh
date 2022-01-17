#!/bin/sh

while [[ true ]] ; do
	killall glava
	killall polybar
	wpg -s ~/.config/wallpaper/ ;
	timeout 0.5s xsettingsd -c ~/.config/xsettingsd/xsettingsd.conf ;
	wal -q -i $(cat ~/.fehbg | cut -d"'" -f2 | grep -i /h) ;
	~/.config/polybar/launch.sh &
	pywal-discord -t abou &
	~/.config/myPersonalConf/changeColorGlave.sh &
sleep 3600
done
