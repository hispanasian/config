# Config

This is my configuration for my `HOME` directory. This will be a `.config` folder that resides in your `HOME` directory and can be referenced from there.

## Setup

Ensure that you clone this repository into your `HOME` directory. To do so, run this command:

```bash
cd ~
git clone git@github.com:hispanasian/config.git ~/.config
```

### Bash

We want to reference the provided [bash/.profile](bash/.profile) in our profile and [bash/.bashrc](bash/.bashrc). A sample [.profile](.profile) file is found here. You can copy it:

```bash
ln -s -f ~/.config/bash/.profile ~/.profile
ln -s -f ~/.config/bash/.bashrc ~/.bashrc
```

### Powershell

Update your profile to point to [powershell/Microsoft.PowerShell_profile.ps1`](powershell/Microsoft.PowerShell_profile.ps1`) (Powershell Core looks at this location by default). You can do so by editing your `$PROFILE` as follows:

```powershell
. $HOME\.config\powershell\Microsoft.PowerShell_profile.ps1
```
