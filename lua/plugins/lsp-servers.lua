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
}
