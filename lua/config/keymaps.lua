-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Semicolon = colon
vim.keymap.set({ "n", "x", "o" }, ";", ":", { desc = "Enter Command Mode" })
-- vim.keymap.set({ "n", "x", "o" }, ":", ";", { desc = "Repeat last f, t, F, or T" })

-- q to close buffer; close window only if not modified (nothing pending)
vim.keymap.set("n", "q", function()
  if vim.bo.modified then
    vim.cmd("q") -- Shows "No write since last change" and keeps window open
  else
    Snacks.bufdelete()
    if vim.api.nvim_win_is_valid(0) then
      vim.cmd("q")
    end
  end
end, { desc = "Close Buffer and Window" })

-- qa to close everything
vim.keymap.set("n", "qa", ":qa<cr>", { desc = "Quit All" })

-- Open a vertical terminal on the right
vim.keymap.set("n", "<leader>fv", function()
  Snacks.terminal(nil, {
    win = {
      position = "right",
      width = 0.3, -- Opens terminal covering 30% of the screen width
    },
  })
end, { desc = "Terminal (Vertical)" })
