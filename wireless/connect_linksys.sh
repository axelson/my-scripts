#!/bin/bash
echo sudo iwconfig eth1 essid linksys
sudo iwconfig eth1 essid linksys
sleep 2
echo sudo dhclient eth1
sudo dhclient eth1
