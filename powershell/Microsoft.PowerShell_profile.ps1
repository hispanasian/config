# Upgrade our tab completion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/aliases.ps`, instead of adding them here directly.
#. Join-Path -Path $HOME -ChildPath ".config\powershell\asliases.ps1"
. $HOME\.config\powershell\aliases.ps1

# Oh My Posh (https://ohmyposh.dev/)
if(Get-Command oh-my-posh) {
    oh-my-posh --init --shell pwsh --config ~/.config/ohmyposh.json | Invoke-Expression
}

# wsl
try {
    if (Select-String -Path /proc/version -Pattern "Microsoft" -ErrorAction SilentlyContinue) {
        # if we're in wsl, docker won't work. use windows' docker instance
        # https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly
        $env:DOCKER_HOST = 'tcp://localhost:2375'
    }
} catch {}
