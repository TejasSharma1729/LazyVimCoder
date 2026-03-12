-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.fillchars = { eob = " " } -- Hide the ~ at the end of the buffer
vim.opt.relativenumber = false -- Absolute numbering
vim.opt.number = true -- Show line numbers
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indent
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Be smart about indentation
vim.opt.foldmethod = "syntax" -- Fold based on syntax
vim.opt.foldlevel = 99 -- Don't fold anything by default
vim.opt.hlsearch = true -- Highlight search results
vim.opt.backspace = "indent,eol,start" -- Allow backspacing over everything in insert mode
vim.opt.laststatus = 2 -- Always show the status line
vim.opt.mouse = "a" -- Enable mouse support in all modes
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.env.PATH = "/opt/homebrew/bin:" .. vim.env.PATH -- Homebrew binaries should be prioritized
vim.env.CPATH = ".:/opt/homebrew/include:/opt/homebrew/include/eigen3/:/opt/homebrew/include/c++/v1/:"
  .. (vim.env.CPATH or "")

-- Get the path to the 'default' or current nvm node version
local node_path = vim.fn.trim(vim.fn.system("source $HOME/.nvm/nvm.sh && nvm which default"))
if node_path == "" or node_path:find("not found") then
  node_path = vim.fn.trim(vim.fn.system("source $HOME/.nvm/nvm.sh && nvm which node"))
end
local nvm_path = vim.fn.fnamemodify(node_path, ":h")

-- Set the provider if a path was found
if nvm_path ~= "" then
  vim.env.PATH = nvm_path .. ":" .. vim.env.PATH
end

-- GitHub Copilot Settings
vim.g.copilot_no_tab_map = true -- Avoid conflict with nvim-cmp
vim.g.copilot_assume_mapped = true -- Assume it's handled by another plugin if needed

-- Pasting
vim.g.neovide_input_use_logo = 1
