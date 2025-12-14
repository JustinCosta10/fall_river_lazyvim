return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              typeCheckingMode = "basic",
              reportUnknownMemberType = "none",
              reportUnknownVariableType = "none",
              reportUnknownArgumentType = "none",
              reportUnknownParameterType = "none",
              reportMissingTypeStubs = "none",
            },
          },
        },
      },
    },
  },
}
