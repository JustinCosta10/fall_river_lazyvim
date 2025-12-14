return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("pyrightconfig.json", "pyproject.toml", ".git")(fname) or vim.fn.getcwd() -- fallback to your project cwd instead of ~
          end,
        },
      },
    },
  },
}
