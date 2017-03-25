#!/bin/sh

sudo apt-get update && sudo apt-get upgrade

install_packages=''

for package in `cat packages.txt`; do
  install_packages="$install_packages $package"
fi
done

sudo apt-get install $install_packages
