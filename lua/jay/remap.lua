local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true}
local term_opts = {siltent = true}

-- Set leader
keymap("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.mapalocalleader = " "

-- lazy
keymap("", "<C-c>", "<Esc>", opts)
keymap("", "<C-s>", ":w <CR>", opts)
keymap("n", "<leader><leader>", ":so<CR>", opts)

-- Files
--keymap("n", "<leader>pv", ":Ex<CR>", opts)

-- Move Text up and down
keymap("n","<A-Up>", ":m -2 <CR>" , opts)
keymap("n", "<A-Down>", ":m +1<CR>", opts)

-- Dupe Line
keymap("n", "<leader><Up>", "YP", opts)
keymap("n", "<leader><Down>", "Yp", opts)

-- Split Screen
keymap("n", "ss", ":split<CR><C-w>w", opts)
keymap("n", "sv", ":vsplit<CR><C-w>w", opts)

-- Change Screen
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)

-- Tabs
keymap("n", "<C-t>", ":tabnew<CR>", opts)
keymap("n", "<C-w>", ":tabc<CR>", opts)
keymap("n", "<A-Left>", ":tabp<CR>", opts)
keymap("n", "<A-Right>", ":tabn<CR>", opts)

-- Select All
keymap("n", "<C-a>", "gg<S-v>G", opts)
