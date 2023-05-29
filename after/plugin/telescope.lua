local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require("telescope.actions")

local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      }
    },
    file_ignore_patterns = {
      "node_modules",
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw add use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mapping
        ["i"] = {
          ["<C-w"] = function() vim.cmd("normal vbd") end,
        },
        ["n"] = {
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["r"] = fb_actions.rename,
          ["D"] = fb_actions.remove,
          ["/"] = function()
            vim.cmd("startinsert")
          end,
        }
      }
    }
  }
}

telescope.load_extension("file_browser")

-- File Explorer
vim.keymap.set(
  "n", "<space>ff", "<cmd>lua require('telescope.builtin').find_files({ no_ignore = false, hidden = true })<cr>",
  { noremap = true, silent = true, desc = "Find Files" })
vim.keymap.set(
  "n", "<space>gf", "<cmd>lua require('telescope.builtin').live_grep()<cr>",
  { noremap = true, silent = true, desc = "Live Grep" })
vim.keymap.set(
  "n", "<space>pv", function()
    telescope.extensions.file_browser.file_browser({
      path = "%:p:h",
      cwd = telescope_buffer_dir(),
      respect_gitignore = false,
      hidden = true,
      grouped = true,
      previewer = true,
      initial_mode = "normal",
      layout_config = { height = 150 }
    })
  end, { desc = "Open File Browser" })
