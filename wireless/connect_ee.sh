#!/bin/bash
echo sudo ifconfig eth1 up
sudo ifconfig eth1 up
sleep 3
echo sudo iwconfig eth1 essid EE
sudo iwconfig eth1 essid EE
sleep 1
echo sudo iwconfig
sudo iwconfig
sleep 1
echo sudo dhclient eth1
sudo dhclient eth1
