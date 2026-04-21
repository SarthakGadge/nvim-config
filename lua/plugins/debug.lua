return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      -- This finds the Mason root directory automatically
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy"
      local python_path = mason_path .. "/venv/Scripts/python.exe"
      -- Check if the file exists before trying to setup
      if vim.fn.executable(python_path) == 1 then
        require("dap-python").setup(python_path)
      else
        print("Debugpy not found at: " .. python_path)
      end
    end,
  },
}
