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
alias fq='fly -t qrk'

# vault
alias vlcpi='export VAULT_ADDR=https://vault-d-dc.mia.ucloud.int:8200 && vault login -method cert -client-cert=$HOME/.ssh/vault/customs-pit.pem -client-key=$HOME/.ssh/vault/customs-pit-key.pem'

# wsl aliases
if grep -q Microsoft /proc/version; then
    # WSL
    alias clip='clip.exe'
    alias docker='docker.exe'
else
    # Native Linux
  echo "native Linux"
fi