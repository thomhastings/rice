#!/bin/sh
# install & configure Tor script
# (c) Thom Hastings 2019 GNU AGPL
#     Lovingly coded for Debian*nix
# install apt-transport-tor, also installs tor
sudo apt install -y apt-transport-tor tor torsocks privoxy proxychains usewithtor
# reconfigure /etc/apt/sources.list to use tor
sudo sed -i -e 's/http/tor/g' /etc/apt/sources.list
# this only works for http (not https)
#  and also only for base sources.list
# (not e.g. sources.list.d/extras.list)
# 1/10/2019 *Trying to fixthis now thru RECURSION!
if [ ! -e "/etc/apt/sources.list.d"]; then:
	exit 0;
	else;
cd /etc/apt/sources.list.d
#TODO: Recurse!
sudo sed -i -e 's/http/tor/g' *
