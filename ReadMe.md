This is just my nvim config including an installation guide for Windows.

# Install Vim:

install with Choco as Admin

```PS1
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

# Install font and set it as standard in terminal

```
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/Hack.zip
```

# Custom Settings in Powershell:

Appearance General:

- Use Acrylic material in the tab row

Apperance PowerShell

- Colorscheme Solarized Dark
- Font: FiraCode Nerd Font Mono
- Transparency: 85%
- Acrylic material

Video:
https://www.youtube.com/watch?v=ajmK0ZNcM4Q

Ende bei 50:00

infos:
https://dev.to/craftzdog/my-neovim-setup-for-react-typescript-tailwind-css-etc-58fb
https://github.com/craftzdog/dotfiles-public/tree/master
