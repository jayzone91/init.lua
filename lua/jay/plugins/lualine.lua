local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	options = {
		icons_anabled = true,
		theme = "catppuccin",
		sections = {
			lualine_c = {
				"filename",
				file_status = true,
				path = 0,
			},
		},
	},
})
