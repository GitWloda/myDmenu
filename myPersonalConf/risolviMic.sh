#!/bin/bash

pulseeffects --gapplication-service &

while [[ true ]]; do
	if [[ $(pacmd list-sources | tail -170 | head -1 | awk {'print $3'}) != 30000 ]]; then
	       pacmd set-source-volume 5 30000 &
	       sleep 2
	fi	  
   sleep 0.2	
done
