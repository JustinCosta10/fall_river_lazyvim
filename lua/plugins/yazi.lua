return {
  -- Disable neo-tree
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Disable snacks explorer hijacking directories
  {
    "snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
  },

  -- Replace with yazi
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
      { "<leader>e", "<cmd>Yazi<cr>", desc = "Open Yazi (current file)" },
      { "<leader>E", "<cmd>Yazi cwd<cr>", desc = "Open Yazi (cwd)" },
      { "<leader>y", "<cmd>Yazi<cr>", desc = "Open Yazi (current file)" },
      { "<leader>Y", "<cmd>Yazi cwd<cr>", desc = "Open Yazi (cwd)" },
    },
    opts = {
      open_for_directories = false,
    },
    init = function()
      vim.g.loaded_netrwPlugin = 1

      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "*",
        callback = function(args)
          local bufname = vim.api.nvim_buf_get_name(args.buf)
          if bufname ~= "" and vim.fn.isdirectory(bufname) == 1 then
            vim.defer_fn(function()
              if vim.api.nvim_buf_is_valid(args.buf) then
                vim.api.nvim_buf_delete(args.buf, { force = true })
              end
              require("yazi").yazi(nil, bufname)
            end, 100)
          end
        end,
      })
    end,
  },
}
