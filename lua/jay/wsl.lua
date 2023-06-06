vim.cmd [[
	augroup _Yank_Clippy
		autocmd!
		autocmd TextYankPost * :call system("/mnt/c/windows/system32/clip.exd",@")
	augroup end
]]
