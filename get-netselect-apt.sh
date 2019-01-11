#!/bin/sh
# © Thom Hastings 2019 AGPL
#for Debian
echo "netselect-apt chooses your fastest local mirror! installing it now ..."
sudo apt install netselect-apt -y
sudo netselect-apt
echo "all done!"
