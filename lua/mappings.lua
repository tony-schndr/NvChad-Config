require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>db", function()
  require'dap'.toggle_breakpoint()
end, { desc = "Add breakpoint at line" })

map("n", "<leader>dup", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end,
  {desc = "Open debugging sidebar"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
