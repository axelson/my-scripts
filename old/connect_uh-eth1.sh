#!/bin/bash
echo ifconfig eth1 up
sudo ifconfig eth1 up
sleep 3
echo iwconfig eth1 essid uh
sudo iwconfig eth1 essid uh
sleep 1
echo iwconfig eth1 key 416c6f6861
sudo iwconfig eth1 key 416c6f6861
sleep 1
echo iwconfig eth1 enc open
sudo iwconfig eth1 enc open
sleep 1
echo iwconfig
sudo iwconfig
sleep 1
echo dhclient eth1
sudo dhclient eth1
