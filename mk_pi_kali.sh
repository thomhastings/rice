#!/usr/bin/env/bash
# Thom Hastings 2017
# (c) NEW BSD LICENSE
# make pi kali .shell
diskutil list
diskutil unmountDisk /dev/disk2
sudo dd if=kali-2017.3-rpi3-nexmon.img of=/dev/disk2 bs=1m
