#!/bin/sh
# get sublime text script
# (c) Thom Hastings 2018 GNU GPLv3
# source:
# https://www.virtualbox.org/wiki/Linux_Downloads
#
# install prerequisites
sudo apt install -y apt-transport-https
# wget and add GPG keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
# add sources.list entry for virtualbox
echo "deb https://download.virtualbox.org/virtualbox/debian jessie contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
# apt-get would be less risky
sudo apt update
# install virtualbox
sudo apt install -y virtualbox-5.2
# install dynamic kernel module service
sudo apt install -y dkms