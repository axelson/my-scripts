#!/bin/bash

echo starting
sleep 1
acstate=/proc/acpi/ac_adapter/AC/state
mode=`cat $acstate`
text=/home/jason/scripts/script-data/ac-adapter-good.txt
echo mode is:
echo $mode modal
temp=`cat $text`
if [ "$mode" = "$temp" ];then
    echo true
    echo can now connect >> /tmp/jason_startup.txt
else
    echo false
fi
if [ "$mode" = "state: 		on-line" ];then
    `cat >> /tmp/jason/jason_startup.txt`
    echo true
    echo can now connect > /tmp/jason_startup.txt
else
    echo false
fi
if [ "$mode" = "state: on-line" ];then
    echo true
else
    echo false
fi
sleep 1
