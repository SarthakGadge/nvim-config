require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<C-S-c>", "ggVGy", opts)
map("n", "<leader>yc", "ggVG", opts)

