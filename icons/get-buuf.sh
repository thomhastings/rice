#!/bin/bash
###########
#
# Get Buuf Icon Theme Script
# (c) Thom Hastings 2017
# BSD 3-clause License
# tested Kali 2016.2
# GNU AGPL 2019
###########
cd /tmp
echo "Get Buuf Icon Theme:\n"
echo "Downloading..."
wget -c buuficontheme.free.fr -r -l1 --no-parent -A.tar.xz
#wget -r -l1 -H -t1 -nd -N -np -A.tar.xz -erobots=off buuficontheme.free.fr
cd /usr/share/icons
echo "Decompressing..."
tar xvJf /tmp/buuficontheme.free.fr/*.tar.xz
#BUUF_VER=$(ls /usr/share/icons | grep buuf)
echo "Setting GNOME Icon Theme..."
gsudo gsettings set org.gnome.desktop.interface icon-theme 'buuf3.22'
echo "Done!"
