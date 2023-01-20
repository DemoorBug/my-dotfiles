#!/usr/bin/env fish

switch $argv[1]
case "-d"
  if string match -qr '^[0-9]+$' $argv[2]
    yt-dlp --merge-output-format mkv -f bestaudio+$argv[2] $argv[3]
  else 
    yt-dlp --merge-output-format mkv -f bestaudio+bastvidow $argv[2]
  end
case "-f"
  yt-dlp --list-subs -F $argv[2] | less
case "-asub"
  yt-dlp  --convert-subs srt --skip-download --write-auto-sub --sub-lang $argv[2] $argv[3]
case "-sub"
  yt-dlp  --convert-subs srt --skip-download --sub-lang $argv[2] $argv[3]
case "-sub"
case "-h"
  echo '-d download -f find -asub auto-sub -sub sub'
end

