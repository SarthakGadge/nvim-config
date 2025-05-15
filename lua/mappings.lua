require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local ui = require("harpoon.ui")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<C-S-c>", "ggVGy", opts)
map("n", "<leader>yc", "ggVG", opts)
map('n', '<C-q>', '<cmd> q <CR>', opts)
map('n', 'x', '"_x', opts)
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('n', '<leader>|', '<C-w>v', opts) -- split window vertically
map('n', '<leader>-', '<C-w>s', opts) -- split window horizontally
map('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
map('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
map('v', 'p', '"_dP', opts)
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
map('n', '<leader>e', "<cmd>NvimTreeToggle<CR>", opts)
map({ 'n', 'v' }, '<leader>h', '<Nop>', { silent = true })  
map("n", "<leader>h", ui.toggle_quick_menu, { desc = "Harpoon: Toggle menu" })

local terminal_bufnr = nil

map("n", "<leader>tt", function()
  if terminal_bufnr and vim.api.nvim_buf_is_valid(terminal_bufnr) then
    -- Try to find a window showing this buffer
    local wins = vim.fn.win_findbuf(terminal_bufnr)
    if #wins > 0 then
      -- Terminal is visible, hide it
      vim.api.nvim_win_close(wins[1], true)
    else
      -- Terminal is hidden, show it again
      vim.cmd("split")
      vim.api.nvim_win_set_buf(0, terminal_bufnr)
      vim.cmd("resize 15")
    end
  else
    -- Terminal hasn't been created yet or was killed, create it
    vim.cmd("split")
    vim.cmd("resize 15")
    vim.cmd("terminal powershell")  -- or pwsh
    terminal_bufnr = vim.api.nvim_get_current_buf()
  end
end, { desc = "Toggle PowerShell terminal like VSCode" })
