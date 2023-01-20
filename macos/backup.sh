#!/bin/bash

path="$PWD"/
config="/Users/demoorbug/.config/"
mymacos="/Users/demoorbug/Developments/Mydotfiles/macos/"

cd "$mymacos"
git co macos
if [ "$1" = "del" ]; then
  del "$mymacos"AlfredWorkflows/
  del "$mymacos"fish/
fi

cp "$config"../.gitconfig "$mymacos"
#cp -r "$path" "$mymacos"AlfredWorkflows
rsync -av --exclude "node_modules" "$path" "$mymacos"AlfredWorkflows

cp -r "$config"fish/ "$mymacos"fish
cp -r "$config"../.local/user_bin/ "$mymacos"user_bin

git add .
git ci -m 'auto update'
git ps
