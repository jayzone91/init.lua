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
  use "kyazdani42/nvim-web-devicons" -- File Icons
  use {
    "nvim-lualine/lualine.nvim",     -- statusline
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }
  use "onsails/lspkind-nvim"  -- VS Code like pictograms

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use 'L3MON4D3/LuaSnip'
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use 'jose-elias-alvarez/null-ls.nvim'  -- use Neovim as a language Server
  use "MunifTanjim/prettier.nvim" -- Prettier in nvim
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "norcalli/nvim-colorizer.lua"

  use 'lewis6991/gitsigns.nvim'
  
  use({
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup {
            icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    end
}) -- A pretty list for showing diagnostics, references, telescope results, quickfix and location lists

end)
