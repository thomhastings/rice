#!/bin/sh
# get open broadcaster software script
# (c) Thom Hastings 2018 GNU GPLv3
# source:
# https://github.com/jp9000/obs-studio/wiki/Install-Instructions#linux
#
# install prerequisites
sudo apt install -y ffmpeg
# add ppa repository
sudo add-apt-repository ppa:obsproject/obs-studio
# update repositories
sudo apt update
# finally, install obs-studio
sudo apt install -y obs-studio
