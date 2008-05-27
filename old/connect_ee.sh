#!/bin/bash
echo ifconfig wlan0 up
sudo ifconfig wlan0 up
sleep 3
echo iwconfig wlan0 essid EE
sudo iwconfig wlan0 essid EE
sleep 1
echo iwconfig
sudo iwconfig
sleep 1
echo dhclient wlan0
sudo dhclient wlan0
