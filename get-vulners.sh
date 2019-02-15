#!/bin/sh
# download & install nmap-vulners
# (c) Thom Hastings 2018 GNU GPLv3
# Update 2019 w/ moar firepower!!! AGPL
# just wget the txt to the right directory
# NEW! includes VULSCAN.NSE: https://www.computec.ch/projekte/vulscan/?s=download
echo "Checing dependency..."
sudo apt install nmap -y
cd /usr/share/nmap/scripts
wget https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse
mkdir vulscan
cd vulscan
git clone https://github.com/scipag/vulscan.git
