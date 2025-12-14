-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>uh", function()
  local bufnr = vim.api.nvim_get_current_buf()

  if vim.lsp.inlay_hint and vim.lsp.inlay_hint.enable then
    local enabled = false
    if vim.lsp.inlay_hint.is_enabled then
      enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr })
    end
    vim.lsp.inlay_hint.enable(not enabled, { bufnr = bufnr })
  end
end, { desc = "Toggle LSP inlay hints" })
