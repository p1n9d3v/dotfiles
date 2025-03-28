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
        dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
        opts = {
            signature = { enabled = true, window = { border = "single" } },
            snippets = { preset = "luasnip" },
            keymap = {
                ["<C-e>"] = { "hide", "fallback" },
                ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev" },
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
                },
            },
            cmdline = {
                enabled = false,
                keymap = {
                    -- recommended, as the default keymap will only show and select the next item
                    ["<Tab>"] = { "show", "accept" },
                    ["<C-j>"] = { "select_next", "fallback" },
                    ["<C-k>"] = { "select_prev", "fallback" },
                    ["<C-e>"] = { "hide", "fallback" },
                    ["<C-y>"] = { "select_and_accept", "fallback" },
                    ["<CR>"] = { "accept", "fallback" },
                },
                sources = function()
                    local type = vim.fn.getcmdtype()

                    if type == "/" or type == "?" then
                        return { "buffer" }
                    end
                    if type == ":" or type == "@" then
                        return { "cmdline" }
                    end
                    return {}
                end,
                completion = {
                    menu = {
                        draw = {
                            columns = { { "kind_icon", "label", "label_description" } },
                        },
                    },
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
