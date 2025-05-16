return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<leader>ft]],
        direction = "float", -- "horizontal" or "vertical" also work
        float_opts = {
          border = "rounded",
        },
        shell = "powershell", -- or "pwsh"
      })
    end,
  },
}
