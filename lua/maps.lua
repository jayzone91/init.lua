local keymap = vim.keymap
vim.g.mapleader = " "
-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split Screen
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
-- Move window
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "s<right>", "<C-w>l")

-- Move line
keymap.set("","<leader><up>", ":m -2<Return>", { silent = true})
keymap.set("","<leader><down>", ":m +1<Return>", { silent = true})
