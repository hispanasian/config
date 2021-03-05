function vlcpi { $env:VAULT_ADDR = "https://vault-d-dc.mia.ucloud.int:8200"; vault login -method cert -client-cert="$env:HOME\.ssh\vault\customs-pit.pem" -client-key="$env:HOME\.ssh\vault\customs-pit-key.pem" $args }
function vlairlock { $env:VAULT_ADDR = "https://vault-d-dc.mia.ucloud.int:8200"; vault login -method cert -client-cert="$env:HOME\.ssh\vault\gears-customs-pit-quark.pem" -client-key="$env:HOME\.ssh\vault\gears-customs-pit-quark.pem" $args }

# docker
Set-Alias -Name d -Value docker
Set-Alias -Name dc -Value docker-compose

# kubernetes
Set-Alias -Name k -Value kubectl

# wsl aliases
try
{
    if (Select-String -Path /proc/version -Pattern "Microsoft" -CaseSensitive -ErrorAction SilentlyContinue) {
        # we're running in wsl
        Set-Alias -Name clip -Value clip.exe
        Set-Alias -Name explorer -Value explorer.exe

        if ((Get-Command docker.exe -ErrorAction SilentlyContinue) -and -not (Get-Command docker -ErrorAction SilentlyContinue)) {
            Set-Alias -Name docker -Value docker.exe
        }

        if ((Get-Command gitk.exe -ErrorAction SilentlyContinue) -and -not (Get-Command gitk -ErrorAction SilentlyContinue)) {
            Set-Alias -Name gitk -Value gitk.exe
        }

        if ((Get-Command vault.exe -ErrorAction SilentlyContinue) -and -not (Get-Command vault -ErrorAction SilentlyContinue)) {
            Set-Alias -Name vault -Value vault.exe
        }

        if ((Get-Command devenv.exe -ErrorAction SilentlyContinue) -and -not (Get-Command devenv -ErrorAction SilentlyContinue)) {
            Set-Alias -Name devenv -Value devenv.exe
        }

        if ((Get-Command docker-compose.exe -ErrorAction SilentlyContinue) -and -not (Get-Command docker-compose -ErrorAction SilentlyContinue)) {
            Set-Alias -Name docker-compose -Value dedocker-compose.exe
        }

        if ((Get-Command kubectl.exe -ErrorAction SilentlyContinue) -and -not (Get-Command kubectl -ErrorAction SilentlyContinue)) {
            Set-Alias -Name kubectl -Value kubectl.exe
            Set-Alias -Name k8s -Value kubectl.exe
            Set-Alias -Name k -Value kubectl.exe
        }

        if ((Get-Command k9s.exe -ErrorAction SilentlyContinue) -and -not (Get-Command k9s -ErrorAction SilentlyContinue)) {
            Set-Alias -Name k9s -Value k9s.exe
        }

        if ((Get-Command nuget.exe -ErrorAction SilentlyContinue) -and -not (Get-Command nuget -ErrorAction SilentlyContinue)) {
            Set-Alias -Name nuget -Value nuget.exe
        }
    }
} catch {}
