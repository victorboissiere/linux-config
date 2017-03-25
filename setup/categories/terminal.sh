#!/bin/sh

pip3 install --user thefuck
mkdir -p ~/.config/terminator
cp /tmp/setup/linux-config/softwares/terminator/config ~/.config/terminator/
cp -r /tmp/setup/linux-config/softwares/ranger/ ~/.config/ranger/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp /tmp/setup/linux-config/zsh/.zshrc ~/.zshrc
chsh -s /bin/zsh
