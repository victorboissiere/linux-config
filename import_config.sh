#!/bin/sh

set -e

cp -r ~/.config/i3 ./
cp -r ~/.i3/lock ./i3/lock
cp -r ~/.config/polybar ./polybar

echo "Config imported!"

git status | grep "nothing to commit" > /dev/null

if [ $? -eq 0 ]; then
  echo "No changes detected"
else
  echo "Please commit!"
fi
