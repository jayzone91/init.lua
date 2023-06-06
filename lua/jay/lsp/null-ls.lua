local status, null = pcall(require, "null-ls")
if not status then return end

local formatting = null.builtins.formatting
local daignostics = null.builtins.diagnostics

null.setup({
  debug = false,
  sources = {
    formatting.prettier.with({extra_args = {}}),
    formatting.black.with({extra_args = {"--fast"}}),
    formatting.stylua
  }
})
