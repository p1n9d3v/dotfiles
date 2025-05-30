return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
        opts = {
            colors = {
                primary_black = "#0f0314",
                primary_white = "#94A1B4",
                primary_red = "#CD0026",
                dark_red = "#3A0000",
                light_red = "#D35560",
                white = "#FFFFFF",
            },
            highlights = {
                PmenuSel = {
                    bg = "${dark_red}",
                    fg = "${white}",
                },
                CursorLine = {
                    bg = "${dark_red}",
                },
                LineNr = {
                    fg = "${primary_white}",
                },
                CursorLineNr = {
                    fg = "${primary_red}",
                },
                Visual = { bg = "${dark_red}" },
                FloatBorder = { fg = "${primary_red}", bg = "${none}" },

                -- LazyGit
                LazyGitBorder = { fg = "${primary_red}", bg = "${none}" },

                -- Blink
                BlinkCmpDocBorder = {
                    fg = "${primary_red}",
                },

                BlinkCmpMenuBorder = {
                    fg = "${primary_red}",
                },

                BlinkCmpSignatureHelpBorder = {
                    fg = "${primary_red}",
                },

                -- ["@variable"] = {
                --     fg = "${primary_red}",
                -- },
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
