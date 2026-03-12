-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Simplified filetype-specific settings using a single autocmd group
local group = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "java" },
  group = group,
  callback = function()
    vim.opt_local.foldmethod = "syntax"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "make", "python" },
  group = group,
  callback = function()
    vim.opt_local.foldmethod = "indent"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  group = group,
  callback = function()
    vim.opt_local.expandtab = false -- Use real tabs for Makefiles
  end,
})
