local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "lua",
    "json",
    "css",
    "bash",
    "c_sharp",
    "dockerfile",
    "git_config",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "html",
    "javascript",
    "json",
    "json5",
    "markdown",
    "php",
    "prisma",
    "python",
    "regex",
    "rust",
    "scss",
    "sql"
  },
  autotag = {
    enable = true,
  }
}
