# check if a command exists with hash <command> 2> /dev/null as per https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# fly
alias fm='fly -t mia'
alias fq='fly -t qrk'

# vault
alias vlcpi='export VAULT_ADDR=https://vault-d-dc.mia.ucloud.int:8200 && vault login -method cert -client-cert=$HOME/.ssh/vault/customs-pit.pem -client-key=$HOME/.ssh/vault/customs-pit-key.pem'

if hash pwsh 2>/dev/null; then
  alias powershell='pwsh'
fi

# wsl aliases
if grep -q Microsoft /proc/version 2> /dev/null; then
  # we're running in wsl
  alias clip='clip.exe'
  alias explorer='explorer.exe'

  if hash docker.exe 2> /dev/null && ! hash docker 2> /dev/null; then
    alias docker='docker.exe'
  fi

  if hash gitk.exe 2> /dev/null && ! hash gitk 2> /dev/null; then
    alias gitk='gitk.exe'
  fi

  if hash fly.exe 2> /dev/null && ! hash fly 2> /dev/null; then
    alias fly='fly.exe'
  fi

  if hash vault.exe 2> /dev/null && ! hash vault 2> /dev/null; then
    alias vault='vault.exe'
  fi
fi