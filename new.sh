#!/bin/bash
echo
echo "Using git"
which git
git init
git status
git submodule add -f https://github.com/thomhastings/bt5-scripts
git submodule add -f https://github.com/derv82/wifite2
git submodule add -f https://github.com/thomhastings/tanto
git submodule add -f https://github.com/kanedasan/knife
git submodule add -f https://github.com/ksoona/tanto ktanto
git submodule add -f https://github.com/thomhastings/rice
git submodule add -f https://github.com/lionsec/katoolin
git submodule add -f https://github.com/brainfucksec/kalitorify
git submodule add -f https://github.com/trustedsec/ptf
git submodule add -f https://git-tails.immerda.ch/tails
git status
git add *
git status
git commit -a -m "source submodules added successfully."
git status
git push -u
