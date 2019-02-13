#!/bin/sh
# © Thom Hastings 2019 AGPL
#for Debian
# suggest running this *before* running get-apt-tor.sh
echo "netselect-apt chooses your fastest local mirror! installing it now ..."
sudo apt install netselect-apt -y
echo "Installed! Running it now to find the fastest local mirror..."
sudo netselect-apt
echo "Done! Backing up your current /etc/apt/sources.list..."
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
echo "Writing new /etc/apt/sources.list..."
sudo cp sources.list /etc/apt/
echo "*ALL DONE!"
