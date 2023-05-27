This is just my nvim config including an installation guide for Windows.

# Install Vim:

Install NeoVim Nightly from here:
(https://github.com/equalsraf/neovim-qt/wiki/Windows-AppVeyor-Builds)[https://github.com/equalsraf/neovim-qt/wiki/Windows-AppVeyor-Builds]

Set your Path Variable.

## Local nVim Config:

```PowerShell
$env:LOCALAPPDATA\nvim
```

# Install packer

```PowerShell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

# Install RipGrep

```PowerShell
scoop install ripgrep
```

# Install lua language Server

´´´PowerShell
scoop install lua-language-server
´´´

# Install Language Servers

```PowerShell
npm i -g typescript-language-server

rustup component add rust-src
```

# Install Tree Sitter

```PowerShell
scoop install tree-sitter
```

# Install Zig Lang

```PowerShell
choco install zig -y
```

# Install font and set it as standard in terminal

[https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf](https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

# Custom Settings in Powershell:

Appearance General:

- Use Acrylic material in the tab row

Apperance PowerShell

- Colorscheme Solarized Dark
- Font: Hack Nerd Font Mono
- Transparency: 85%
- Acrylic material

# Install oh my posh

```Powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

# Install Terminal Icons

```Powershell
scoop bucket add extras
scoop install terminal-icons
```

## open your terminal profile

```Powershell
notepad $PROFILE
```

Add user_profile.ps1 to your profile

# Start Neovim

```
:PackerInstall
```

"Error in coroutine: no command :TSUpdate" Error happens only once @ install
