#!/bin/sh

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/setup/chrome.deb
sudo dpkg -i /tmp/setup/chrome.deb
sudo apt-get install -f -y
sudo dpkg -i /tmp/setup/chrome.deb
