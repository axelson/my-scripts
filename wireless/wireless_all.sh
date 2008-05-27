#FUNCTIONS
connectNetwork() {
    network=$1
    echo
    echo connectNetwork: network is $network
    sudo iwconfig eth1 essid $network
    echo ifconfig eth1 up
    sudo ifconfig eth1 up
    echo dhclient eth1
    sudo dhclient eth1
    echo done!
    sleep 1
}

tryNetwork() {
    network=$1
    sudo iwconfig eth1 essid $network
    if [ $network = "uh" ];then
	sudo iwconfig eth1 key open s:Aloha
    fi
    sleep 3
    #sudo iwconfig | grep $network > /tmp/jason_net.txt
    sudo iwconfig > /tmp/jason_net.txt
    sudo iwlist eth1 scan > /tmp/jason_scan.txt
    jNet=`grep $network /tmp/jason_scan.txt`
    echo jNet is $jNet >> /tmp/jason-test.txt
    if [ ! "$jNet" = "" ];then
	echo true
    else
	echo false
    fi
}

#MAIN
#start wireless
~/scripts/wireless/start_wireless.sh
cd /tmp
#find network to connect to
echo trying \"linksys\"
test7=`tryNetwork "linksys"`
if [ "$test7" = "true" ];then
    network="linksys"
else
    echo trying \"uh\"
    test7=`tryNetwork "uh"`
    if [ "$test7" = "true" ];then
	network="uh"
    else
	echo trying \"EE\"
	test7=`tryNetwork ":EE"`
	if [ "$test7" = "true" ];then
	    network="EE"
	else
	    network=""
	fi
    fi
fi

#echo test7 is $test7
#echo scan eth1
#iwlist eth1 scan
#iwconfig

#connect to network.
echo connecting to network $network
if [ ! "$network" = "" ];then
    test6=`connectNetwork "$network"`
fi
echo test6 is $test6
if [ "$network" = "uh" ];then
    galeon www.google.com
    #echo setting conky
    #/root/my-scripts/conky/set-eth1.sh
else
    if [ "$network" = "EE" ];then
	echo username: eeuser
	echo password: mosfet
	sleep 2
	galeon www.google.com
    fi
fi
#echo ifconfig eth1 up
#ifconfig eth1 up
#echo dhcpcd eth1
#dhcpcd -t 20 eth1
#echo Done!
sleep 1
exit
