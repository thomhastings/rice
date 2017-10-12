#!/bin/sh
# wgetall script
# (c) Thom Hastings 2012-2017 New BSD License
# TODO: allow multiple extension arguments (e.g. mp3,wav,flac)
if [[ "$1" == "" ]] ; then
  echo "Usage: ./wgetall.sh [EXT] [URL]     -- wgets all files of extension EXT from base URL."
  exit
fi
wget -r -l1 -H -t1 -nd -N -np -A.$1 -erobots=off "$2"
echo "w-got all .$1 from $2"
