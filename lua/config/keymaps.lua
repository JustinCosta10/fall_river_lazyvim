-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>h", function()
  local path = vim.fn.expand("~/.config/nvim/nvim_notes.md")
  local buf = vim.fn.bufadd(path)
  vim.fn.bufload(buf)

  vim.bo[buf].modifiable = false
  vim.bo[buf].bufhidden = "wipe"

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = math.floor(vim.o.columns * 0.6),
    height = math.floor(vim.o.lines * 0.6),
    row = 2,
    col = 4,
    border = "rounded",
  })
end, { desc = "Open notes (floating)" })
