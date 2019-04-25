#!/bin/bash
echo ""
echo "Using git"
which git
echo ""
pwd
echo "Initializing..."
git init
echo ""
echo "Status:"
git status
echo ""
echo "Checking on y'all Vagrants..."
git submodule add -f https://gitlab.com/kalilinux/build-scripts/kali-vagrant build-scripts/kali-vagrant
echo "Collecting sources..."
git submodule add -f https://git-tails.immerda.ch/tails tails-src
echo ""
if [ ! -e 'kali' ]
    pwd
    echo "no kali dir detected, ergo.."
    mkdir kali
    pwd
echo ""
echo "Adding my faves directly..."
git submodule add -f https://github.com/BrainFuckSec/kalitorify kali/kalitorify
git submodule add -f https://github.com/TrustedSec/ptf kali/ptf
git submodule add -f https://github.com/LionSec/katoolin kali/katoolin
git submodule add -f https://github.com/derv82/wifite2 kali/wifite2
git submoudle add -f https://github.com/kaneda/knife build-scripts/knife
echo ""
echo "All looks good from here, Knight Rider."
echo ""
echo "Going for Kali..."
for LINE in `curl http://git.kali.org/gitweb/?a=project_index | sort | cut -d " " -f 1`
    if [ ! -e "kali/`echo $LINE | awk -F. '{print $1}'`" ]
        git submodule add -f git://git.kali.org/$LINE
echo ""
echo "Great success!"
echo ""
echo "Finally, my piece of the resistance..."
git submodule add -f https://github.com/thomhastings/bt5-scripts kali/thomhastings/bt5-scripts
git submodule add -f https://github.com/thomhastings/tanto build-scripts/knife
git submodule add -f https://github.com/ksoona/tanto ktanto
git submodule add -f https://github.com/thomhastings/rice
git status
git add *
git status
git commit -a -m "Update script success, so push."
git status
git push -u
