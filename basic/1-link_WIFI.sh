#!/bin/bash
## Read WIFI's name and password from stdin, then connect

# unblock all Network Adapter
rfkill unblock all

# get Network Adpater's name(not 'lo')
NA=`ifconfig -a | head -10 | tail -1 | awk -F: '{print $1}'`

if [ "$NA" == "lo" ]; then
	NA=`ifconfig -a | head -1 | awk -F: '{print $1}'`
fi
echo $NA

# Read WIFI's name and password
echo "Now Connecting WIFI:"
echo "Input WIFI's name and password:"
read name password
wpa_supplicant -B -i $NA -c <(wpa_passphrase $name $password)
dhcpcd $NA

head -7 README.md | tail -1

