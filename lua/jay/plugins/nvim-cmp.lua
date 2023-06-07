local cmp_stat, cmp = pcall(require, "cmp")
if not cmp_stat then
	return
end
local luasnip_stat, luasnip = pcall(require, "luasnip")
if not luasnip_stat then
	return
end
local lsp_stat, lspkind = pcall(require, "lspkind")
if not lsp_stat then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	}),
	-- sources for autocomplete
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "buffer" }, -- text within current buffer
		{ name = "path" }, -- file system paths
	}),
	-- configure lspkind for vs-code like icons
	formatting = {
		format = lspkind.cmp_format({
			maxwidth = 50,
			ellipsis_char = "...",
		}),
	},
})
