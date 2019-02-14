#!/bin/sh
# install & configure Tor script
# (c) Thom Hastings 2019 GNU AGPL
#     Lovingly coded for Debian*nix
#     suggest runing get-netselect-apt.sh 1st
# install apt-transport-tor, also installs tor
sudo apt-get install -y apt-transport-tor tor torsocks obfsproxy privoxy proxychains #usewithtor
# reconfigure /etc/apt/sources.list to use tor
sudo sed -i -e 's/http/tor/g' /etc/apt/sources.list
# this only works for http (not https)
#  and also only for base sources.list
# (not e.g. sources.list.d/extras.list)
# 1/10/2019 *Trying to fixthis now thru RECURSION!
if [ ! -e "/etc/apt/sources.list.d" ]
	then
	exit 0
fi
cd /etc/apt/sources.list.d
	#TODO? apt install tree; Recurse! (Binary search)
sudo sed -i -e 's/http/tor/g' *
