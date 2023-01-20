xcompmgr &
fcitx5 &
copyq &
exec slstatus &
xrandr --setprovideroutputsource modesetting NVIDIA-0 
xrandr --output HDMI-1-1 --mode 1920x1080 --output eDP-1-1 --off
xrandr --dpi 121
 feh --bg-fill --randomize Desktop/background
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec dwm
