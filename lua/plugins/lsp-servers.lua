return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        jsonls = {},
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "standard",
              },
            },
          },
        },
        lua_ls = {},
        bashls = {},
        ruff = false,
      },
    },
  },
}
