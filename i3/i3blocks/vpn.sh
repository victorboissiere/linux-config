#!/bin/sh

nb_vpn=$(ps aux | grep openvpn | wc -l)

if [ $nb_vpn -gt 1 ]; then
  echo -n "<span foreground=\"#2196F3\">VPN ON</span>"
else
  echo -n "<span foreground=\"#FFF\">VPN OFF</span>"
fi
