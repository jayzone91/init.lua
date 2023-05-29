This is just my nvim config including an installation guide for Windows.

# Install Vim:

Install NeoVim Nightly from here:
(https://github.com/equalsraf/neovim-qt/wiki/Windows-AppVeyor-Builds)[https://github.com/equalsraf/neovim-qt/wiki/Windows-AppVeyor-Builds]

Set your Path Variable.

## delete old configs
```PowerShell
rm -rf $env:LOCALAPPDATA\nvim-data\*
```

```PowerShell
rm -rf $env:LOCALAPPDATA\nvim
```

## Create new Config folder:

```PowerShell
mkdir $env:LOCALAPPDATA\nvim
```

# Install packer

```PowerShell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```
# Install aria
```PowerShell
scoop install aria2
```
## configure aria
```PowerShell
scoop config aria2-warning-enabled false
```

# Install Depedencies

## Buckets
```PowerShell
scoop bucket add extras
```

```PowerShell
scoop install ripgrep lua-language-server tree-sitter terminal-icons
```


# Install Language Servers

```PowerShell
npm i -g typescript-language-server emmet-ls
```

```
rustup component add rust-src
```


# Install Zig Lang

```PowerShell
choco install zig -y
```

# Install font and set it as standard in terminal

[https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf](https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

# Download and Install newest Cascadia Code for Font Ligature and Icon Support

[https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip](https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip)

# Custom Settings in Powershell:

Use Settings.json in PowerShell folder.

# Install oh my posh

```PowerShell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

## open your terminal profile

```PowerShell
notepad $PROFILE
```

Add user_profile.txt to your profile

```PowerShell
notepad $env:POSH_THEMES_PATH\theme.omp.json
```

# Clone Config

```PowerShell
git clone https://github.com/jayzone91/init.lua "$env:LOCALAPPDATA\nvim"
```

```PowerShell
vim
```

```
:PackerInstall
```

"Error in coroutine: no command :TSUpdate" Error happens only once @ install

Just restart vim and try again