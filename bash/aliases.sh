# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias powershell='pwsh'

# fly
alias fm='fly -t mia'

# wsl aliases
if [ -f /mnt/c/WINDOWS/system32/clip.exe ]; then
    alias clip='clip.exe'
fi