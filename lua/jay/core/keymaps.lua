local keymap = vim.keymap

-- set leader key to space
keymap.set("", "<space>", "Nop")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for the lazy peoples
keymap.set("", "<C-c>", "<Esc>") -- use to exit insert / visual mode
keymap.set("", "<C-s>", ":w<CR>") -- save file
keymap.set("n", "<leader><leader>", ":so<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Move Text up / down one line
keymap.set("n", "<A-Up>", ":m -2<CR>")
keymap.set("n", "<A-Down>", ":m +1<CR>")

-- Dupe line
keymap.set("n", "<leader><Up>", "YP")
keymap.set("n", "<leader><Down>", "Yp")

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Window management
keymap.set("n", "sv", "<C-w>v") -- split window vertically
keymap.set("n", "ss", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal in width & hight
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<C-Up>", "<C-w>k") -- move to top window
keymap.set("n", "<C-Down>", "<C-w>j") -- move to bottom window
keymap.set("n", "<C-Left>", "<C-w>h") -- move to left window
keymap.set("n", "<C-Right>", "<C-w>l") -- move to right window

keymap.set("n", "<C-t>", ":tabnew<CR>") -- open new tab
keymap.set("n", "<C-w>", ":tabc<CR>") -- close current tab
keymap.set("n", "<Tab>", ":tabn<CR>") -- go to next tab
keymap.set("n", "<S-Tab>", ":tabp<CR>") -- go to previous tab

-- Plugin Keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximation

-- nvim-tree
keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>") -- Focus file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current directory
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>") -- find string in current directory as you type
