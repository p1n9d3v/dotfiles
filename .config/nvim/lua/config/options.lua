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

vim.o.shell = "/bin/zsh"

-- Dashboard Header
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#ffffff" })
vim.g.lazyvim_eslint_auto_format = true

-- Disable shada file
vim.o.shadafile = "NONE"

-- Diagnostics
vim.diagnostic.config({
    virtual_lines = true,
})
