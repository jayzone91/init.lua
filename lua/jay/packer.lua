vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  })
end)
