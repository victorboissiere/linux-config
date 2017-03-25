#!/bin/sh

rm -rf /tmp/setup
mkdir /tmp/setup && cd /tmp/setup && sudo apt-get update && sudo apt-get upgrade -y;

install_packages=''

for package in `cat ./linux-config/setup/packages.txt`; do
  install_packages="$install_packages $package"
done

sudo apt-get install -y $install_packages

git clone https://github.com/victorboissiere/linux-config
git clone https://github.com/victorboissiere/linux-config ~/Documents/linux-config

echo 'PHP DEV'

./linux-config/setup/categories/php.sh

echo 'JS DEV'

./linux-config/setup/categories/js.sh

echo 'ENTERTAINMENT'

./linux-config/setup/categories/entertainment.sh


echo 'INTERNET'

./linux-config/setup/categories/internet.sh


echo 'TERMINAL'

./linux-config/setup/categories/terminal.sh


echo 'GIT'

cp linux-config/git/.gitconfig ~/

echo 'I3'

cp linux-config/i3/i3/config ~/.i3/
mkdir ~/i3blocks
cp -r linux-config/i3/i3blocks ~/i3blocks

echo 'VIM'

./linux-config/setup/categories/linux.sh
