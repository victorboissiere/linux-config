#!/bin/sh

mkdir /tmp/setup && cd /tmp/setup && sudo apt-get update && sudo apt-get upgrade;

install_packages=''

for package in `cat packages.txt`; do
  install_packages="$install_packages $package"
fi
done

sudo apt-get install $install_packages

git clone https://github.com/victorboissiere/linux-config
git clone https://github.com/victorboissiere/linux-config ~/Documents

echo 'PHP DEV'

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo 'JS DEV'

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

echo 'ENTERTAINMENT'

deb http://repository.spotify.com stable non-free
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
sudo apt-get update && sudo apt-get install spotify-client

echo 'INTERNET'

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt-get install -f
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo 'TERMINAL'

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp linux-config/zsh/.zshrc ~/
source ~/.zshrc
cp linux-config/softwares/terminator/config ~/.config/terminator/
cp -r linux-config/softwares/ranger/ ~/.config/ranger/

echo 'GIT'

cp linux-config/git/.gitconfig ~/

echo 'I3'

cp linux-config/i3/i3/config ~/.i3/
mkdir ~/i3blocks
cp -r linux-config/i3/i3blocks ~/i3blocks

echo 'VIM'

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'LINK GITHUB CONFIG TO CURRENT INSTALLATION'


