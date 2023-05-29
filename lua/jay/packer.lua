local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed!")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  })
  use "nvim-lualine/lualine.nvim"       -- Statusline
  use "nvim-lua/plenary.nvim"           -- Common Utils
  use "onsails/lspkind.nvim"            -- vscode-like pictograms
  use "hrsh7th/cmp-buffer"              -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp"            -- nvim-cmp source for nvims built in lsp
  use "hrsh7th/nvim-cmp"                -- Completion
  use "neovim/nvim-lspconfig"           -- LSP
  use "jose-elias-alvarez/null-ls.nvim" -- Use nvim as language server to inject lsp diags, code actions and more via lua
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'L3MON4D3/LuaSnip'
  use "glepnir/lspsaga.nvim" -- LSP UIs

  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }
  use "kyazdani42/nvim-web-devicons" -- File icons
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
  use "norcalli/nvim-colorizer.lua"
  use "folke/zen-mode.nvim"
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "akinsho/nvim-bufferline.lua"
  use "lewis6991/gitsigns.nvim"
  use "dinhhuy258/git.nvim"     -- For Git blame & browse
  use "linty-org/key-menu.nvim" -- Overview of all Keymaps
end)
