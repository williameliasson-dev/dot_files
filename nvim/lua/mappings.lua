require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", { desc = "Toggle breakpoint" })
map("n", "<leader>dc", "<cmd>lua require('dap').continue()<cr>", { desc = "Continue" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
