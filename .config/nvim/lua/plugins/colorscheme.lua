return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
        opts = {
            colors = {
                light_grey = "require('onedarkpro.helpers').darken('white', 50, 'onedark_dark')",
                dark_purple = "require('onedarkpro.helpers').darken('purple', 50, 'onedark_dark')",
            },
            highlights = {
                PmenuSel = {
                    bg = "${light_grey}",
                },
                CursorLine = {
                    bg = "${dark_purple}",
                },
                NeoTreeGitUntracked = {
                    fg = "#ef596f",
                },
                SnacksPickerGitStatusUntracked = {
                    fg = "#ef596f",
                },
                LineNr = {
                    fg = "#DECBF2",
                },
                Visual = { bg = "#2A288F" },
                BlinkCmpGhostText = { fg = "#DECBF2" },
            },
            styles = {
                keywords = "italic",
                functions = "italic",
                conditionals = "italic",
            },
            options = {
                transparency = true,
            },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "onedark_dark",
        },
    },
}
