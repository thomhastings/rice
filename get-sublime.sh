#!/bin/sh
# get sublime text script
# (c) Thom Hastings 2017 GNU GPLv3
# source:
# https://www.sublimetext.com/docs/3/linux_repositories.html#apt
#
# install prerequisites
sudo apt install -y apt-transport-https
# wget and install GPG key
wget -c -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# we do not have a license so we cannot choose the dev channel over stable
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# apt-get would be less risky
sudo apt update
# finally, install sublime!
sudo apt install -y sublime-text
