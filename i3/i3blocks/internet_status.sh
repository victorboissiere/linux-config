#!/bin/sh

Color_Off="\033[0m";
Red="\033[0;31m";
Green="[0;32m";

IP='8.8.8.8'
ping -c 1 $IP >/dev/null 2>&1
if [ "$?" = 0 ]; then
  echo -n '<span foreground="#66BB6A">INTERNET OK</span>'
else
  echo -n '<span foreground="#EF3935">INTERNET KO</span>'
fi
