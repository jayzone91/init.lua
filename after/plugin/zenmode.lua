vim.keymap.set("n", "<leader>zz", function()
  require("zen-mode").setup {
    window = {
      width = 90,
      options = {}
    },
  }
  require("zen-mode").toggle()
  vim.no.wrap = false
  vim.wo.number = true
  vim.wo.rnu = true
  ColorMyPencils()
end)


