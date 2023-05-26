This is just my nvim config including an installation guide for Windows.

# Install Vim:

install with Choco as Admin

```PowerShell
choco install neovim --pre
```

## Local nVim Config:

```
$env:LOCALAPPDATA\nvim
```

# Install packer

```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

# Install RipGrep

```
scoop install ripgrep
```

# Install lua language Server

´´´
scoop install lua-language-server
´´´

# Install Language Servers

```
npm i -g typescript-language-server typescript vscode-langservers-extracted cssmodules-language-server @microsoft/compose-language-service dockerfile-language-server-nodejs emmet-ls intelephense sql-language-server @tailwindcss/language-server @fsouza/prettierd eslint_d

rustup component add rust-src
```

# Install Tree Sitter

```
scoop install tree-sitter
```

# Install Zig Lang

```
choco install zig
```

# Install font and set it as standard in terminal

```
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/Hack.zip
```

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

```
scoop bucket add extras
scoop install terminal-icons
```

## open your terminal profile

```
notepad $PROFILE
```

Add user_profile.ps1 to your profile

# Start Neovim

```
:PackerInstall
```

"Error in coroutine: no command :TSUpdate" Error happens only once @ install

Video:
https://www.youtube.com/watch?v=ajmK0ZNcM4Q

Ende bei 1:23:

infos:
https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb
https://github.com/craftzdog/dotfiles-public/tree/master
