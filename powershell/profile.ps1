# Upgrade our tab completion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/aliases.ps`, instead of adding them here directly.
#. Join-Path -Path $HOME -ChildPath ".config\powershell\asliases.ps1"
. $HOME\.config\powershell\aliases.ps1

function prompt {
    $origLastExitCode = $LASTEXITCODE

    $prompt = ""

    $prompt = Write-Prompt "$($executionContext.SessionState.Path.CurrentLocation) " # current working directory
    $prompt += Write-VcsStatus
    $prompt += Write-Prompt "`r`n>"

    $LASTEXITCODE = $origLastExitCode
    if ($prompt) { "$prompt " } else { " " }
}
