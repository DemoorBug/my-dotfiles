#!/bin/bash/
PATH="/Users/demoorbug/opt/anaconda3/bin:/Users/demoorbug/opt/anaconda3/condabin:/usr/local/sbin:/Users/demoorbug/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

path=/Users/demoorbug/Developments/word/
files=$(ls $path)
thisTime=$(date +%Y-%m-%d)
boole=true
fileName=$path'word-'$thisTime'.txt'

for filename in $files 
do
  if [ $filename == 'word-'$thistime'.txt' ] ; then
    boole=false
  fi
done

if [ $boole == true ]; then
  code $fileName
fi
terminal-notifier -message "open this day " -title "word"
