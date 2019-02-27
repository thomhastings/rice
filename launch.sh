#!/bin/bash
#
macchanger --show wlan0
macchanger -r -A
airmon-ng start wlan0
macchanger -r -A wlan0
macchanger -r -A
macchanger --show wlan0
iwlist
ifconfig
ip addr
ip
ip link
macchanger --show wlan0mon
iwconfig -h
iwlist
ifconfig
echo "Cleaning up..."
airmon-ng stop wlan0mon
#wifite -m
#
#cat wordlists.txt > temp.tmp
#cat temp.tmp
#while `wc -l temp.tmp` > 0 :
#do
#	cat wordlists.txt | grep .txt
#done
#wifite -m
#
