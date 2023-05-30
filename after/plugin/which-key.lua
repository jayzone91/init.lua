local status, wk = pcall(require, "which-key")
if (not status) then return end

local opts = {
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  prefix = "",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
  expr = false,   -- use `expr` when creating keymaps
}

wk.register({
  ["<space>p"] = {
    name = "Browser"
  },
  ["<space>z"] = {
    name = "Zen-"
  }
}, opts)
