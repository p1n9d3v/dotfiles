-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "dart",
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

vim.api.nvim_create_augroup("JSLogMacro", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = "JSLogMacro",
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    callback = function()
        local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)
        vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa:" .. esc .. "la, " .. esc .. "pl") --NOTE: ^[ is the escape key
    end,
})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWritePre", {
    pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
    callback = function()
        if vim.fn.exists(":EslintFixAll") ~= 0 then
            vim.cmd("EslintFixAll")
        end
    end,
})
