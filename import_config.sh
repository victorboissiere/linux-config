#!/bin/sh

cp -r ~/.i3 i3/ && rm -rf i3/i3 && mv i3/.i3 i3/i3
cp -r ~/i3blocks i3/

# Soft
cp ~/.vimrc vim/
cp -r ~/.vim/snippets vim/snippets
cp -r ~/.config/terminator softwares/

# Useful scripts
cp /bin/lock bash_scripts/

# Zsh
cp ~/.zshrc zsh/

# Git
cp ~/.gitconfig git/


echo "Config imported!"

git status | grep "nothing to commit" > /dev/null

if [ $? -eq 0 ]; then
  echo "No changes detected"
else
  echo "Please commit!"
fi
