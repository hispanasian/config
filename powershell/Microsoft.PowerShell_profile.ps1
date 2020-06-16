# Upgrade our tab completion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/aliases.ps`, instead of adding them here directly.
#. Join-Path -Path $HOME -ChildPath ".config\powershell\asliases.ps1"
. $HOME\.config\powershell\aliases.ps1

# git support
if (-not(Get-Module -ListAvailable -Name posh-git)) {
    PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force
}

# wsl
try {
    if (Select-String -Path /proc/version -Pattern "Microsoft" -ErrorAction SilentlyContinue) {
        # if we're in wsl, docker won't work. use windows' docker instance
        # https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly
        $env:DOCKER_HOST = 'tcp://localhost:2375'
    }
} catch {}

function prompt {
    $origLastExitCode = $LASTEXITCODE

    $prompt = ""

    $prompt = Write-Prompt "$env:UserName@$env:ComputerName " -ForegroundColor Green # user@host<space>
    $prompt += Write-Prompt "$($executionContext.SessionState.Path.CurrentLocation)" -ForegroundColor Yellow # current working directory
    $prompt += Write-VcsStatus # git status
    $prompt += Write-Prompt "`n>"

    $LASTEXITCODE = $origLastExitCode
    if ($prompt) { "$prompt " } else { " " }
}
