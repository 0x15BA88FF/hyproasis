require "nvchad.mappings"

local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Quick escape" })
map("n", ";", ":", { desc = "CMD enter command mode" })
