set fish_greeting ""


if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-us ';' nvm $argv
end
#aliases
alias ll "exa -l -g --icons"
alias ls "exa --icons"
alias lst "exa --icons -T -L"
alias lla "exa -l -g -a --icons"
alias adblink "scrcpy -Sw --shortcut-mod=rsuper,lctrl+rsuper & VLC=/Applications/VLC.app/Contents/MacOS/VLC sndcpy "
alias lg "lazygit"
alias ghs "ghs.bash"
alias y "y.bash"
alias path "path.bash"
alias del "trash"

alias rm "echo Use 'trash' app to move files into trash. If you really need rm, use the full path i.e. '/bin/rm'"

set -x NVM_DIR ~/.nvm
nvm use default --silent
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /Users/demoorbug/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

