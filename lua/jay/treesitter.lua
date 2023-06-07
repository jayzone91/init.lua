local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then return end

configs.setup({
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "tsx",
    "toml",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "rust",
    "bash",
    "regex",
    "prisma"
  },
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {}
  },
  autotag = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  indent = {enable = true}
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = {"javascript", "typescript.tsx"}
