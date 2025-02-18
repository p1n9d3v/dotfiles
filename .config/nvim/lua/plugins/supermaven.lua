-- path/to/plugins/supermaven.lua
return {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
        require("supermaven-nvim").setup({
            keymaps = {
                accept_suggestion = "<C-y>",
                clear_suggestion = "<C-e>",
            },
            color = {
                suggestion_color = "#E0CBF2",
                cterm = 117,
            },
        })
    end,
}
