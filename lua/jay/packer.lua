vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim",
		requires = {{ "nvim-lua/plenary.nvim" }}
	}

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,
			}
		end
	})

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	}

	use("nvim-treesitter/playground")
	use("theprimeagen/refactoring.nvim")
	use("tpope/vim-fugitive")
	use("nvim-treesitter/nvim-treesitter-context")

	use {
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},

			-- snippets
			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		}
	}

	use("folke/zen-mode.nvim")
	use("laytan/cloak.nvim")
	use("eandrju/cellular-automaton.nvim")
end)
