local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
  keymaps = {
    -- open blame window
    blame = "<leader>gb",
    -- open file/folder in git repo
    browse = "<leader>go",
  }
})
