vim.g.mapleader = " "

local keymap = vim.keymap

-- File Explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")


