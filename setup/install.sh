#!/bin/sh

sudo apt-get update && sudo apt-get upgrade -y;

install_packages=''

for package in `cat packages.txt`; do
  install_packages="$install_packages $package"
done

rm -rf /tmp/setup
mkdir /tmp/setup && cd /tmp/setup && sudo apt-get install -y $install_packages

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



echo 'GIT'

cp linux-config/git/.gitconfig ~/

echo 'I3'

./linux-config/setup/categories/i3.sh

echo 'VIM'

./linux-config/setup/categories/vim.sh

echo 'TERMINAL'

./linux-config/setup/categories/terminal.sh

