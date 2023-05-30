# This is just my nvim config including an installation guide for Windows.

## Plugins

- [rose-pine](https://github.com/rose-pine/neovim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [telescope.nvi](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [zen-mode.nvim](https://github.com/folke/zen-mode.nvim)
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [git.nvim](https://github.com/dinhhuy258/git.nvim)
- [key-menu.nvim](https://github.com/linty-org/key-menu.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)

# Install Vim:

Install NeoVim Nightly from here:
[https://github.com/neovim/neovim/releases/tag/nightly](https://github.com/neovim/neovim/releases/tag/nightly)

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

## Install packer

```PowerShell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Install aria

```PowerShell
scoop install aria2
```

## configure aria

```PowerShell
scoop config aria2-warning-enabled false
```

## Install Depedencies

### Buckets

```PowerShell
scoop bucket add extras
```

```PowerShell
scoop install https://gist.githubusercontent.com/jayzone91/b9b4a011e3868f80fdb61070ad54d5ce/raw/apps.json
```

## Install Language Servers

```PowerShell
npm i -g typescript-language-server emmet-ls
```

```
rustup component add rust-src
```

## Install Zig Lang

```PowerShell
choco install zig -y
```

## Install font and set it as standard in terminal

[https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf](https://github.com/pyrho/hack-font-ligature-nerd-font/blob/master/font/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf)

## Download and Install newest Cascadia Code for Font Ligature and Icon Support

[https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip](https://github.com/microsoft/cascadia-code/releases/download/v2111.01/CascadiaCode-2111.01.zip)

## Custom Settings in Powershell:

Use Settings.json in PowerShell folder.

## Install oh my posh

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

## Clone Config

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
