return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
  },

  {
    "lervag/vimtex",
    ft = { "tex", "plaintex", "latex" }, -- load only on TeX files
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "build",
        options = { "-pdf", "-interaction=nonstopmode", "-synctex=1" },
        continuous = 1,
      }
    end,
    keys = {
      { "<leader>lc", "<cmd>VimtexCompile<cr>", desc = "Compile (VimTeX)" },
      { "<leader>lv", "<cmd>VimtexView<cr>", desc = "View PDF (VimTeX)" },
      { "<leader>lk", "<cmd>VimtexStop<cr>", desc = "Stop compiler" },
      { "<leader>lC", "<cmd>VimtexClean<cr>", desc = "Clean aux files" },

      -- optional: one-key compile
      { "<leader>p", "<cmd>VimtexCompile<cr>", desc = "Quick Compile (VimTeX)" },
    },
  },
}
