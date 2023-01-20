#!/usr/bin/env fish
# https://superuser.com/questions/776008/how-to-remove-a-path-from-path-variable-in-fish 参考地址

switch $argv[1]
case "-h"
  echo '[-s] show all path'\n'[-r number] remove path'\n'[-a path] add path'\n'[-h] help'
case "-s"
  echo $fish_user_paths | tr " " "\n" | nl
case '-r'
  set --erase --universal fish_user_paths\[$argv[2]\]
case '-a'
  fish_add_path $argv[2]
end
