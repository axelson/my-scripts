#!/bin/bash
while [ "foo" = "foo" ]; do
    sleep 1800
    #sleep 3
    ps -A | grep ktorrent
    if [ $? ];then
        date
        echo
    else
        echo need to restart
        ktorrent
    fi
done
