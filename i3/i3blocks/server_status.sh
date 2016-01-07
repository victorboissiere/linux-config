#!/bin/sh

Color_Off='\033[0m'
Red='\033[0;31m'
Green='\033[0;32m'

IP='tivbroc.com'
ping -c 1 8.8.8.8 >/dev/null 2>&1
if [ "$?" = 0 ]; then
    ping -c 1 $IP >/dev/null 2>&1
    if [ "$?" = 0 ]; then
      echo '<span foreground="#66BB6A">SERVER OK</span>'
      echo -n "OK" > server_state
    else
      old_state=$(cat server_state)
      if [ "$old_state" = "OK" ]; then
        notify-send -t 10000 -u critical "Master, your server seems to be offline"
      fi
      echo -n "KO" > server_state
      echo '<span foreground="#EF3935">SERVER KO</span>'
    fi
fi
