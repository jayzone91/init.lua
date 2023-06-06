local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then return end

configs.setup({
  ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "markdown",
    "markdown_inline"
  },
  ignore_install = {"phpdoc"},
  highlight = {
    enable = true,
    disable = {}
  },
  autopairs = {
    enable = true,
  },
  indent = {enable = true}
})
