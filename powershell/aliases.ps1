function vlcpi { $env:VAULT_ADDR = "https://vault-d-dc.mia.ucloud.int:8200"; vault login -method cert -client-cert="$env:HOME\.ssh\vault\customs-pit.pem" -client-key="$env:HOME\.ssh\vault\customs-pit-key.pem" $args }
function vlairlock { $env:VAULT_ADDR = "https://vault-d-dc.mia.ucloud.int:8200"; vault login -method cert -client-cert="$env:HOME\.ssh\vault\gears-customs-pit-quark.pem" -client-key="$env:HOME\.ssh\vault\gears-customs-pit-quark.pem" $args }

# wsl aliases
if (Select-String -Path /proc/version -Pattern "Microsoft" -ErrorAction SilentlyContinue) {
    # we're running in wsl
    Set-Alias -Name clip -Value clip.exe
    Set-Alias -Name explorer -Value explorer.exe

    if ((Get-Command docker.exe -ErrorAction SilentlyContinue) -and -not (Get-Command docker -ErrorAction SilentlyContinue)) {
        Set-Alias -Name docker -Value docker.exe
    }

    if ((Get-Command gitk.exe -ErrorAction SilentlyContinue) -and -not (Get-Command gitk -ErrorAction SilentlyContinue)) {
        Set-Alias -Name gitk -Value gitk.exe
    }

    if ((Get-Command fly.exe -ErrorAction SilentlyContinue) -and -not (Get-Command fly -ErrorAction SilentlyContinue)) {
        Set-Alias -Name fly -Value fly.exe
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
    }
}
