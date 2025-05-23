return {
  -- LSP server configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        jsonls = {},
        pyright = {},
      },
    },
  },

  -- Disable ruff_lsp (optional)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff_lsp = false,
      },
    },
  },

  -- Ensure Mason installs the LSPs
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_extend("force", opts.ensure_installed or {}, {
        "clangd",
        "jsonls",
        "pyright"
      })
    end,
  },
}
