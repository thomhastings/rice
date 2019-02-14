#!/bin/sh
# If you tried installing a custom .deb
# and shit is f*cked, then try running this
# script or these series of commands...
rm -rf kali
rm -rf tails
sh mirror-git-kali-tails-tanto.sh 
ls -alph
apt --fix-broken install
apt -f autoremove -y && apt clean
apt update && apt -f dist-upgrade -y
echo "Did it work? Were you root?"
