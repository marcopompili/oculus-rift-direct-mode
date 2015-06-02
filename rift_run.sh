#!/bin/bash

if [ $# -ne 1 ]
then
	echo "USAGE: $0 <rift-executable>"
	exit 1
fi

SCREENID=1

STATE=`xrandr --screen ${SCREENID} | grep "Screen ${SCREENID}" | cut -d, -f2 | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//'`

if [ "$STATE" = "current 8 x 8" ]
then
	./rift_switch.sh on
fi

# Giving the rift a second to turn on, just in case
sleep 1

# Launching the application
DISPLAY=:1.${SCREENID} $1

./rift_switch.sh off