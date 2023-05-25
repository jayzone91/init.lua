local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "svrana/neosolarized.nvim",
    requires = { "tjdevries/colorbuddy.nvim" }
  }
  use {
    "nvim-lualine/lualine.nvim", -- statusline
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }
  use "onsails/lspkind-nvim"  -- VS Code like pictograms
  use "hrsh7th/cmp-buffer"    -- vim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp"  -- nvim-cmp source for neovim`s built-in LSP
  use "hrsh7th/nvim-cmp"      -- Completion
  use "neovim/nvim-lspconfig" -- LSP
  use 'L3MON4D3/LuaSnip'
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
end)
