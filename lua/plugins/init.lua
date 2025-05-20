return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre',
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "strict",
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                reportUnusedVariable = false,
                reportUnnecessaryTypeIgnoreCase = false,
            },
          },
        },
        html = {},
        cssls = {},
      },
    },
  },
{
  "williamboman/mason-lspconfig.nvim",
    lazy=false,
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = { "pyright", "lua_ls", "html", "cssls" },
    automatic_installation = true,
  },
},

  { import = "nvchad.blink.lazyspec" },
}
}
