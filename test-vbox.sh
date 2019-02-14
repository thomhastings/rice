#!/bin/bash
echo "Install VirtualBox on Fedora 28 script."
echo "(c) Thom Hastings 2019 ~ GNU Affero GPL"
echo
echo "This will need sudo..."
cd /tmp
wget -c -N https://www.virtualbox.org/download/oracle_vbox.asc
sudo rpm --import oracle_vbox.asc
rm oracle_vbox.asc
wget -c -N https://download.virtualbox.org/virtualbox/6.0.4/VirtualBox-6.0-6.0.4_128413_fedora26-1.x86_64.rpm
sudo rpm --checksig VirtualBox-6.0-6.0.4_128413_fedora26-1.x86_64.rpm
sudo dnf install VirtualBox-6.0-6.0.4_128413_fedora26-1.x86_64.rpm
echo "Cleaning up..."
rm VirtualBox-6.0-6.0.4_128413_fedora26-1.x86_64.rpm
echo "Trying to configure..."
sudo /sbin/vboxconfig
echo "Done!"
