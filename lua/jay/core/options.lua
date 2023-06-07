local opt = vim.opt

-- Just some beauty thingys
opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.scrolloff = 8 -- minimal number of screen lines to keep above or below the cursor
opt.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is false

-- misc
opt.backup = false -- creates a backup file
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.swapfile = false -- creates a swapfile
opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.updatetime = 300 -- faster completion ( 4000ms default)
opt.writebackup = false -- if a file is being edited by another program (or was wirtten to file while editing with another program), it is not allowed to be edited

-- line numbers
opt.relativenumber = false -- dont show relative linenumbers
opt.number = true -- show line numbers

-- tabs & indents
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current liine when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you wand case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

opt.termguicolors = true -- turn one termguicolors for colorscheme to work.
opt.background = "dark" -- colorshemes that can be light or dark will be dark
opt.signcolumn = "yes" -- show sign column so that the text doesnt shift
opt.guifont = { "FiraCode Nerd Font", "h12" } -- Set Custom font in GUI

-- backspace
opt.backspace = "indent,eol,start" -- Allow Backspace on indent, end of line or insert mode start position

-- clipboard                                  -- use system Clipboard as default register
local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")
local is_wsl = has("wsl")
if is_mac == 1 then
	require("jay.core.clipboard.mac")
end
if is_win == 1 then
	require("jay.core.clipboard.win")
end
if is_wsl == 1 then
	require("jay.core.clipboard.wsl")
end

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as a whole word
