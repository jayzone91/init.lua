vim.g.mapleader = " "
-- open File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- just to be lazy
vim.keymap.set("", "<C-c>", "<Esc>")

-- delete a word backward
vim.keymap.set("n","dw",'vb"_d')

-- Split Screen
vim.keymap.set("n","sv", ":vsplit<Return><C-w>w", { silent = true })
vim.keymap.set("n","ss", ":split<Return><C-w>w", { silent = true })
-- Move to other screen
vim.keymap.set("n","s<up>", "<C-w>k")
vim.keymap.set("n","s<left>", "<C-w>h")
vim.keymap.set("n","s<down>", "<C-w>j")
vim.keymap.set("n","s<right>", "<C-w>l")

-- Move line
vim.keymap.set("", "<leader><up>", ":m -2<Return>", { silent = true })
vim.keymap.set("", "<leader><down>", ":m +1<Return>", { silent = true })

-- load file
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- fun Stuff
vim.keymap.set("n","<leader>mr", ":CellularAutomaton make_it_rain<Return>");
