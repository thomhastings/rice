#!/bin/sh
# allow VLC to run as root script
# (c) Thom Hastings 2018 GNU GPLv3
# source:
# https://www.tecmint.com/run-vlc-media-player-as-root-in-linux/
#
sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc
# a better fix would be to have the VLC in the kali repos
# compiled with flag --enable-run-as-root in ./configure