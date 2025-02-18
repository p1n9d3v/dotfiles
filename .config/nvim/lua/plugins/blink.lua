return {
    {
        "saghen/blink.compat",
        lazy = true,
        opts = {},
        config = function()
            -- monkeypatch cmp.ConfirmBehavior for Avante
            require("cmp").ConfirmBehavior = {
                Insert = "insert",
                Replace = "replace",
            }
        end,
    },
    {

        "saghen/blink.cmp",
        lazy = true,
        opts = {
            signature = { enabled = true, window = { border = "single" } },
            keymap = {
                preset = "super-tab",
                ["<C-e>"] = { "hide", "fallback" },
                ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
            },
            completion = {
                menu = { border = "single" },
                documentation = { window = { border = "single" } },
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = false,
                    },
                },
                ghost_text = {
                    enabled = true,
                    show_without_selection = true,
                },
            },
            sources = {
                compat = {
                    "avante_commands",
                    "avante_mentions",
                    "avante_files",
                    "obsidian",
                    "obsidian_new",
                    "obsidian_tags",
                },
                cmdline = {
                    -- "cmdline",
                    -- "lsp",
                },
                providers = {
                    obsidian = {
                        name = "obsidian",
                        module = "blink.compat.source",
                    },
                    obsidian_new = {
                        name = "obsidian_new",
                        module = "blink.compat.source",
                    },
                    obsidian_tags = {
                        name = "obsidian_tags",
                        module = "blink.compat.source",
                    },
                    avante_commands = {
                        name = "avante_commands",
                        module = "blink.compat.source",
                        score_offset = 90, -- show at a higher priority than lsp
                        opts = {},
                    },
                    avante_files = {
                        name = "avante_files",
                        module = "blink.compat.source",
                        score_offset = 100, -- show at a higher priority than lsp
                        opts = {},
                    },
                    avante_mentions = {
                        name = "avante_mentions",
                        module = "blink.compat.source",
                        score_offset = 1000, -- show at a higher priority than lsp
                        opts = {},
                    },
                },
            },
        },
    },
}
