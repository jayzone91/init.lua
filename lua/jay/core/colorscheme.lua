local status, catppuccin = pcall(require, "catppuccin")
if not status then
	return
end

catppuccin.setup({
	transparent_background = true,
	show_end_of_buffer = false,
	term_colors = true,
	integration = {
		nvimtree = true,
	},
})

vim.cmd.colorscheme("catppuccin")
