#!/bin/sh
cd ~/Pictures
curl http://wiki.evageeks.org/images/a/a0/M25_C655_big.jpg > eva_longinus.jpg
wget -c -r -l1 -H -t1 -nd -N -np -A.jpg -erobots=off "http://www.jkhp.it/OS-tan/desktops.htm"
if [ ! -e "/usr/share/backgronds/" ]
then
	sudo mkdir /usr/share/backgrounds/
fi
sudo cp *.jpg /usr/share/backgrounds/
