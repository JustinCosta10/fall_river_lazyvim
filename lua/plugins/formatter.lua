return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        sh = { "shfmt" },
      },
    },
  },
}
