-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- Prevent Mouse
vim.opt.mouse = ""

vim.g.ai_cmp = true

vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#ffffff" })
