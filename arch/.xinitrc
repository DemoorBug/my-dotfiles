xcompmgr &
fcitx5 &
exec slstatus &
xrandr --setprovideroutputsource modesetting NVIDIA-0 
xrandr --output HDMI-1-1 --auto --output eDP-1-1 --off
xrandr --dpi 96
feh --bg-fill --randomize Desktop/background
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec dwm
