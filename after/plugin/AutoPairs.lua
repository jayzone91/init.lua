local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end


autopairs.setup {
  disable_filetype = { "TelescopePrompt" }
}

local s, at = pcall(require, "nvim-ts-autotag")
if (not s) then return end

at.setup {}
