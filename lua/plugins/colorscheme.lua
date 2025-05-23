return {
  -- Your colorscheme plugin (e.g., Rose-Pine)
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- or "main"/"dawn"
      })
      vim.cmd.colorscheme("rose-pine")
    end,
  },

  -- Lualine plugin
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "rose-pine", -- Theme name (must match colorscheme)
        component_separators = { left = "│", right = "│" }, -- Custom separators
        section_separators = { left = "", right = "" }, -- Round separators
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}
