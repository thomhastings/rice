#!/bin/sh
# download & install nmap-vulners
# (c) Thom Hastings 2018 GNU GPLv3
#
# wget it to the right directory
# TODO: include VULSCAN.NSE: https://www.computec.ch/projekte/vulscan/?s=download
cd /usr/share/nmap/scripts
wget https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse
