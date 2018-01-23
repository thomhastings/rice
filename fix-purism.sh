#!/bin/sh
# get fix purism pipe symbol script
# (c) Thom Hastings 2018 GNU GPLv3
# source:
# https://forums.puri.sm/t/keyboard-layout-unable-to-recognize-pipe/2022/10
#
sudo echo "evdev:atkbd:dmi:bvn*:bvr*:bd*:svnPurism:pnLibrem13v2*" > /etc/udev/hwdb.d/90-purism-pipe-symbol-fix.hwdb
sudo echo " KEYBOARD_KEY_56=43" >> /etc/udev/hwdb.d/90-purism-pipe-symbol-fix.hwdb
sudo systemd-hwdb update
sudo udevadm trigger