#!/bin/bash

path="$PWD"/
config="/Users/demoorbug/.cofnig/"
mydotfiles="/Users/demoorbug/Developments/Mydotfiles/"
mymacos="/Users/demoorbug/Developments/macos/"

git co macos
if [ "$1" = "del" ]; then
  del "$mymacos"AlfredWorkflows/
  del "$mymacos"fish/
fi

cp "$config"../.gitconfig "$mymacos"
cp -r "$path" "$mymacos"AlfredWorkflows
cp -r "$config"fish/ "$mymacos"fish
cp -r "$config"../.local/user_bin "$mymacos"user_bin

cd "$mymacos"
git add .
git ci -m 'auto update'
git ps
