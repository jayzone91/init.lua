require "nvim-treesitter.configs".setup {
  ensure_installed = {
    "vimdoc",
    "javascript",
    "typescript",
    "c",
    "lua",
    "rust",
    "tsx",
    "json",
    "html",
    "css",
    "json5",
    "markdown",
    "php",
    "prisma",
    "scss",
    "sql"
  },
  autotag = {
    enable = true
  },
  indent = {
    enable = true,
  },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
