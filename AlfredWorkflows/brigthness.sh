#!/bin/bash
PATH="/Users/demoorbug/opt/anaconda3/bin:/Users/demoorbug/opt/anaconda3/condabin:/usr/local/sbin:/Users/demoorbug/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


  
if [[ 0 -lt "$1" ]] && [[ 100 -ge "$1" ]];then
  terminal-notifier -message "$1" -title "Succeed set Brigthness" -sound default
  lunar ddc 2E20DA64-B9CC-9E69-CF13-CD5519828995 brightness "$1" 
else
  terminal-notifier -message "input 0-100 number" -title "Error input" -sound default
fi
#terminal-notifier -message "$1" -title "Message"
#printf '0401' | sudo -S shutdown -s +1
