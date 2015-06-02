#!/bin/bash

if [ $# -ne 1 ]
then
	echo "USAGE: $0 <on|off>"
	exit 1
fi

SCREENID=1

case "$1" in

on)
echo "Switching on the Rift..."
xrandr --screen $SCREENID --output HDMI-0 --auto
;;

off)
echo "Switching off the Rift..."
xrandr --screen $SCREENID --output HDMI-0 --off
;;

esac
