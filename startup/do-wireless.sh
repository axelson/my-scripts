#!/bin/bash
sleep 1
acLoc=/proc/acpi/ac_adapter/AC/state
currState=`cat $acLoc`
goodStateLoc=/home/jason/scripts/script-data/ac-adapter-good.txt
goodState=`cat $goodStateLoc`
if [ "$currState" = "$goodState" ];then
#plugged in, can now connect to wireless network
    echo true
    echo now about to call start_wireless connect >> /tmp/jason_startup.txt
    /home/jason/scripts/wireless/start_wireless.sh
else
    echo false
    echo plugged in so do not connect >> /tmp/jason_startup.txt
fi
sleep 1
