-- just to be lazy
vim.keymap.set("", "<c-c>", "<Esc>", { desc = "ESC" })
vim.keymap.set("", "<c-s>", ":w<CR>", { desc = "Save" })

-- delete a word backward
vim.keymap.set("n", "dw", 'vb"_d', { desc = "Delete a word backwards" })

-- Split Screen
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true, desc = "Split Screen Vertical" })
vim.keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true, desc = "Split Screen horizontal" })
-- Move to other screen
vim.keymap.set("n", "s<up>", "<C-w>k", { desc = "Move to the upper screen" })
vim.keymap.set("n", "s<left>", "<C-w>h", { desc = "Move to the left screen" })
vim.keymap.set("n", "s<down>", "<C-w>j", { desc = "Move to the lower screen" })
vim.keymap.set("n", "s<right>", "<C-w>l", { desc = "Move to the right screen" })

-- New Tab
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", { desc = "New Tab" })
-- Switch to next tab
vim.keymap.set("n", "<C-e>", ":tabn<CR>", { desc = "Switch to next Tab" })
-- Switch to previous tab
vim.keymap.set("n", "<C-q>", ":tabp<CR>", { desc = "Switch to prev. Tab" })
-- Close Tab
vim.keymap.set("n", "<C-w>", ":tabc<CR>", { desc = "Close Tab" })
-- Move line
vim.keymap.set("", "<space><up>", ":m -2<CR>", { silent = true, desc = "Move Line Up" })
vim.keymap.set("", "<space><down>", ":m +1<CR>", { silent = true, desc = "Move line down" })

-- load file
vim.keymap.set("n", "<space><space>", function()
  vim.cmd("so")
end, { desc = "Load File (:so)" })

-- Select All
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
