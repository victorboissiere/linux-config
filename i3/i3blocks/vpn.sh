#!/bin/sh

nb_vpn=$(ps aux | grep openvpn | wc -l)

if [ $nb_vpn -gt 1 ]; then
  echo -n "<span foreground=\"#2196F3\">VPN ON</span>"
  echo -n "ON" > vpn_state
else
  old_state=$(cat vpn_state)
  if [ "$old_state" = "ON" ]; then
    notify-send -t 5000 -u critical "Master, VPN has been disconnected"
  fi
  echo -n "OFF" > vpn_state
  echo -n "<span foreground=\"#FFF\">VPN OFF</span>"
fi
