set fish_greeting ""


if status is-interactive
    # Commands to run in interactive sessions can go here
end
#aliases
alias ll "exa -l -g --icons"
alias ls "exa --icons"
alias lst "exa --icons -T -L"
alias lla "exa -l -g -a --icons"
alias adblink "scrcpy -Sw --shortcut-mod=rsuper & VLC=/Applications/VLC.app/Contents/MacOS/VLC sndcpy"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/demoorbug/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

