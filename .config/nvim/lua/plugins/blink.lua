return {
    {
        "saghen/blink.compat",
        lazy = true,
        opts = {},
    },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = "zbirenbaum/copilot.lua",
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    {
        "saghen/blink.cmp",
        lazy = true,
        dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
        opts = {
            appearance = {
                kind_icons = {
                    Copilot = "󰊤", -- 또는 "󰊤" "󱜙" "󰋦"
                    -- 기존 기본 아이콘들은 그대로 유지됨
                },
            },
            snippets = { preset = "luasnip" },
            keymap = {
                ["<C-e>"] = { "hide", "fallback" },
                ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-n>"] = { "select_next", "fallback" },
                ["<C-p>"] = { "select_prev", "fallback" },
                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                ["<Tab>"] = { "fallback" },
                ["<S-Tab>"] = { "fallback" },
            },
            completion = {
                menu = { border = "rounded", auto_show = true },
                documentation = { window = { border = "rounded" } },
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = false,
                    },
                },
                ghost_text = {
                    enabled = true,
                    show_with_menu = true,
                },
            },
            cmdline = {
                enabled = false,
            },
            sources = {
                default = { "copilot", "lsp", "path", "snippets", "buffer" },
                compat = { "copilot" },
                providers = {
                    copilot = {
                        name = "copilot",
                        module = "blink.compat.source",
                        score_offset = 100,
                        async = true,
                        transform_items = function(_, items)
                            local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                            local kind_idx = #CompletionItemKind + 1
                            CompletionItemKind[kind_idx] = "Copilot"
                            for _, item in ipairs(items) do
                                item.kind = kind_idx
                            end
                            return items
                        end,
                    },
                },
            },
        },
    },
}
