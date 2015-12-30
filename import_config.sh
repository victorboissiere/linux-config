#!/bin/sh

cp -r ~/.i3 i3/ && rm -rf i3/i3 && mv i3/.i3 i3/i3
cp -r ~/i3blocks i3/
cp ~/.bashrc linux_config/

# Soft
cp ~/.vimrc vim/
cp -r ~/.config/terminator softwares/

# VPN
cp /bin/vpnon VPN/
cp /bin/vpnoff VPN/

# Useful scripts
cp /bin/lock bash_scripts/


echo "Config imported!"

git status | grep "nothing to commit" > /dev/null

if [ $? -eq 0 ]; then
  echo "No changes detected"
else
  echo "Please commit!"
fi
