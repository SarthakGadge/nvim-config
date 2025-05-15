return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "html",
      "css",
      "vim",
      "vimdoc",
      "bash",
    },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },

    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- auto-jump to textobj

        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },

      move = {
        enable = true,
        set_jumps = true,

        goto_next_start = {
          ["]f"] = "@function.outer",
          ["]c"] = "@class.outer",
        },
        goto_previous_start = {
          ["[f"] = "@function.outer",
          ["[c"] = "@class.outer",
        },
        goto_next_end = {
          ["]F"] = "@function.outer",
          ["]C"] = "@class.outer",
        },
        goto_previous_end = {
          ["[F"] = "@function.outer",
          ["[C"] = "@class.outer",
        },
      },
    },
  },
}
