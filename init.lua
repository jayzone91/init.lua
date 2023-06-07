
-- Check which OS is present
-- To set Clipboard to buffer.
local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
	require("jay.macos")
end

if is_win == 1 then
	require("jay.windows")
end

if is_wsl == 1 then
	require("jay.wsl")
end

-- Set Font
vim.opt.guifont = { "FiraCode Nerd Font", "h12" }

require("jay")
