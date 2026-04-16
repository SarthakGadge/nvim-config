return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- This tells LazyVim to use basedpyright instead of standard pyright
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic", -- This is the magic line to stop the clutter
                autoImportCompletions = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
      },
      -- Optional: setup other servers like tsserver here if needed
      setup = {},
    },
  },
}
