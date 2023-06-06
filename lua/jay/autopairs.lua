local status, npairs = pcall(require, "nvim-autopairs")
if not status then return end


npairs.setup {
	disable_filetypes = { "TelescopePrompt", "spectre_panel" },
  check_ts = true,
  ts_config = {
    lua = { "string", "source"},
    javascript = {"string", "template_string"},
    java = false,
  },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

