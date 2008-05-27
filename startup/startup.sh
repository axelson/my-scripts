#!/bin/bash
sleep 25
#Set up logitech mouse buttons
xbindkeys
#Set up wireless if plugged in (freezes if not plugged in for some reason)
xterm -e /home/jason/scripts/startup/do-wireless.sh
