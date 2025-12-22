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
                LazyGitBorder = { fg = "${primary_red}", bg = "${none}" },
                BlinkCmpDocBorder = {
                    fg = "${primary_red}",
                },
                BlinkCmpMenuBorder = {
                    fg = "${primary_red}",
                },
                BlinkCmpSignatureHelpBorder = {
                    fg = "${primary_red}",
                },
                SnacksPickerGitStatusUntracked = {
                    fg = "${primary_red}",
                },
                TreesitterContextBottom = {
                    bg = "${dark_red}",
                    style = "bold",
                },
                TreesitterContextLineNumberBottom = {
                    fg = "${white}",
                    bg = "${light_red}",
                },
                TreesitterContextSeparator = {
                    fg = "${light_red}",
                },

                LspReferenceRead = {
                    bg = "#3b4048",
                    fg = "${light_red}",
                    undercurl = true,
                    bold = true,
                    sp = "#FFD700",
                },
                LspReferenceText = {
                    bg = "#3b4048",
                    fg = "${light_red}",
                    undercurl = true,
                    bold = true,
                    sp = "#FFD700",
                },
                LspReferenceWrite = {
                    bg = "#3b4048",
                    fg = "${light_red}",
                    bold = true,
                    undercurl = true,
                    sp = "#FFD700",
                },
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
        "loctvl842/monokai-pro.nvim",
        priority = 1000, -- Ensure it loads first
        opts = {
            transparent_background = true,
            devicons = true,
            override = function(c)
                return {
                    DiagnosticUnnecessary = { fg = c.base.dimmed3, italic = true },
                }
            end,
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "onedark_dark",
            colorscheme = "monokai-pro",
        },
    },
}
