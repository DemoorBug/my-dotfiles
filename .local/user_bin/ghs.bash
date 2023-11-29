#!/usr/bin/env fish

switch $argv[1]
case "-b"
  gh s $argv[2] | xargs -n1 gh browse -R
case "-c"
  gh s $argv[2] | xargs -n1 gh repo clone
end
