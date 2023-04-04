# Config

This is my configuration for my `HOME` directory. This will be a `.config` folder that resides in your `HOME` directory and can be referenced from there.

## Setup

Ensure that you clone this repository into your `HOME` directory. To do so, run this command:

```bash
cd ~
git clone git@github.com:hispanasian/config.git .config
```

## Oh My Posh

This config uses [oh-my-posh](https://ohmyposh.dev/) to stylize the prompt. For font, use [Meslo].

```bash
# Must be admin to install
oh-my-posh font install Meslo
```

On windows, [configure Terminal to use `MesloGM NF`](https://ohmyposh.dev/docs/installation/fonts).

## Shell Setup

Install `oh-my-posh`

[Windows](https://ohmyposh.dev/docs/installation/windows)
```powershell
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

[macOS](brew install jandedobbeleer/oh-my-posh/oh-my-posh)
```bash
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

[Linux](https://ohmyposh.dev/docs/installation/linux)
```bash
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
```

#### Bash

We want to reference the provided [.profile](.profile) in our profile. A sample `.profile` file is found here. You can copy it:

```bash
ln -s -f ~/.config/.profile ~/.profile
ln -s -f ~/.config/bash/.bashrc ~/.bashrc
```

or if you dont want to create a symbolic link, you can edit your .bash_profile and .bashrc as follows:

```bash
echo "test -f ~/.config/.profile && . ~/.config/.profile" >> ~/.profile
echo "test -f ~/.config/bash/.bashrc && . ~/.config/bash/.bashrc" >> ~/.bash_profile
echo "test -f ~/.config/bash/.bashrc && . ~/.config/bash/.bashrc" >> ~/.bashrc
```

#### Zsh

We want to reference the provided [.profile](.profile) in our profile. A sample `.profile` file is found here. You can copy it:

```zsh
ln -s -f ~/.config/.profile ~/.profile
ln -s -f ~/.config/zsh/.zshrc ~/.zshrc
```

or if you dont want to create a symbolic link, you can edit your .zshrc as follows:

```bash
echo "test -f ~/.config/.profile && . ~/.config/.profile" >> ~/.profile
echo "test -f ~/.config/zsh/.zshrc && . ~/.config/zsh/.zshrc" >> ~/.zshrc
```

#### Powershell

Update your profile to point to [powershell/Microsoft.PowerShell_profile.ps1](powershell/Microsoft.PowerShell_profile.ps1`) (Powershell Core looks at this location by default). You can do so by editing the file at `$PROFILE` as follows:

```powershell
. $HOME\.config\powershell\Microsoft.PowerShell_profile.ps1
```

### OSX

#### KeyBindings

In order to Windows-like keybidings, use [Karabiner-Elements](https://karabiner-elements.pqrs.org/). The config for the application should automatically pull from [~/.config/karabiner](~/.config/karabiner).

