return {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    enabled = true,
    opts = {
        keymaps = {
            accept_suggestion = "<Tab>",
            clear_suggestion = "<C-e>",
        },
        disable_inline_completion = false,
        color = {
            suggestion_color = "#9A7EC7",
            cterm = 117,
        },
    },
}
