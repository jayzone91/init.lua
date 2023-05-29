local status, zenMode = pcall(require, "zen-mode")
if (not status) then return end

zenMode.setup {
}

vim.keymap.set('n', '<space>zz', '<cmd>ZenMode<cr>', { silent = true, desc = "Toggle Zen Mode" })
