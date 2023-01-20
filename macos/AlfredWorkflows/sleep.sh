#!/bin/bash
PATH="/Users/demoorbug/opt/anaconda3/bin:/Users/demoorbug/opt/anaconda3/condabin:/usr/local/sbin:/Users/demoorbug/.npm-global/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"


if [ "$1" = "sleep" ]; then
  terminal-notifier -message "5 second sleep" -title "Sleep" -sound default
  sleep 5s && printf '0401' | sudo -S nohup shutdown -s now 
elif [ "$1" = "halt" ]; then
  terminal-notifier -message "halt" -title "halt" 
  printf '0401' | sudo -S nohup shutdown -h now 
fi
  
  
#terminal-notifier -message "$1" -title "Message"
#printf '0401' | sudo -S shutdown -s +1
