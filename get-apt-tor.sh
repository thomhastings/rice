#!/bin/sh
# install & configure Tor script
# (c) Thom Hastings 2018 GNU GPLv3
#
# install apt-transport-tor, also installs tor
apt install -y apt-transport-tor
# reconfigure /etc/apt/sources.list to use tor
sed -i -e 's/http/tor/g' /etc/apt/sources.list
# this only works for http (not https)
#  and also only for base sources.list
# (not e.g. sources.list.d/extras.list)