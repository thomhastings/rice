#!/bin/bash
# Install system-monitor GNOME Shell extension script
# (c) Thom Hastings 2018 - New BSD License
sudo apt-get install gnome-shell-extension-system-monitor htop -y
gnome-shell-extension-tool --enable-extension=system-monitor@paradoxxx.zero.gmail.com
killall -HUP gnome-shell
