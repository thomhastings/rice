#!/bin/sh
# DOCUMENTATION:
# https://wiki.hamburg.ccc.de/ChaosVPN:DebianHowto#QUICK_HOWTO_FOR_DEBIAN_USER
echo "Get \e[33mChaosVPN\e[0m for \e[31mDebian\e[0m script."
echo "(c) Thom Hastings 2019 GNU AGPL"
sleep 0.5
echo "\e[37mInstalling dependencies\e[0m (needs sudo)..."
cd ~
sudo apt install tinc iproute2 -y
echo "\e[33mDone\e[0m!"
sleep 0.4
echo "Are you ready?"
sleep 0.3
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
MACHINE_TYPE=`uname -m`
echo "Machine type is \e[37m$MACHINE_TYPE\e[0m"
sleep 0.2
echo "Changing to \e[37m/tmp\e[0m directory..."
cd /tmp
for LINE in `curl http://debian.sdinet.de/sid/sdinet/chaosvpn/ | cut -d ">" -f -1 | cut -d "=" -f 2 | grep .deb`
do
	temp="${LINE%\"}"  # These 2 lines are for
	temp="${temp#\"}" # removing pesky "marks
	echo "Found: $temp"
	touch tempfile.tmp
	echo ${temp} >> tempfile.tmp
	if [ ${MACHINE_TYPE} = 'x86_64' ]
	then
		PROMPT=`echo "Checking for latest bleeding-edge \e[37m(64-bit)\e[0m..."`
		DEB=`cat tempfile.tmp | grep amd64 | sort | uniq | tail -n 1 | grep amd64.deb`
		URL="http://debian.sdinet.de/sid/sdinet/chaosvpn/"${DEB}
	else
		PROMPT=`echo "Checking for latest bleeding-edge \e[37m(32-bit)\e[0m..."`
		DEB=`cat tempfile.tmp | grep i386 | sort | uniq | tail -n 1 | grep i386.deb`
		URL="http://debian.sdinet.de/sid/sdinet/chaosvpn/"${DEB}
	fi
	echo "Checking vs. \e[32m${DEB}\e[0m..."
done
echo $PROMPT
echo "\e[33mDoing sparklepony unicorn magic: 🦄"
echo "..."
sleep 0.3
echo "Found! Latest is \e[37m${DEB}\e[33m."
sleep 0.9
echo "..."
sleep 0.1
echo ""
sleep 0.1
echo "\e[0m"
FILE="chaosvpn-installer.deb"
echo "Saving to \e[37m"${FILE}"\e[0m"
wget "$URL" -O $FILE && echo "Installing..." && sudo dpkg -i $FILE
echo "Cleaning up..."
rm tempfile.tmp
echo "Deleting \e[37m"${FILE}"\e[0m"
rm $FILE
echo "\e[0mRestoring normality..."
cd ~
echo "\e[32mDONE\e[0m! /🎉/"
