local servers = {
  "lua-language-server",
  --"cssls",
  --"html",
  "pyright",
  --"bashls",
  "jsonls",
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

local status, mason = pcall(require, "mason")
if not status then return end
local status2, mason-lspconfig = pcall(require, "mason-lspconfig")
if not status2 then return end

mason.setup(settings)
mason-lspconfig.setup({
  ensure_installed = servers,
  automatic_installation = true,
})

local lsp_status, lspconfig = pcall(require, "lspconfig")
if not lsp_status then return end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("jay.lsp.handlers").on_attach,
    capabilities = require("jay.lsp.handlers").capabilities,
  }

  server = vim.split(server, "@")[1]

  local require_ok, conf_opts = pcall(require, "jay.lsp.settings" .. server)
  if  require_ok then
    opts = vim.tbl_deep_extend("force", conf_opts, opts)
  end 
  
  lspconfig[server].setup(opts)
end
