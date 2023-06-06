local status, _  pcall(require, "lspconfig")
if not status then return end

require "jay.lsp.mason"
require "jay.lsp.handlers".setup()
require "jay.lsp.null-ls"
