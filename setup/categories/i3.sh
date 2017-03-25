#!/bin/sh

mkdir -p ~/.config/i3
cp /tmp/setup/linux-config/i3/i3/config ~/.config/i3/config
mkdir ~/i3blocks
cp -r /tmp/setup/linux-config/i3/i3blocks/ ~/
sudo cp /tmp/setup/linux-config/other/lock /bin/lock
