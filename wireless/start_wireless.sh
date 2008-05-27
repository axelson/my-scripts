#!/bin/bash
echo sudo modprobe ndiswrapper
sudo modprobe ndiswrapper
sleep 5
echo sudo ifconfig eth1 up
sudo ifconfig eth1 up
sleep 5
echo sudo iwlist eth1 scan
#sudo iwlist eth1 scan
#sudo /etc/init.d/dbus restart
