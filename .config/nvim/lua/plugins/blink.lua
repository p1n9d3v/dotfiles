return {
    {
        "saghen/blink.compat",
        lazy = true,
        opts = {},
    },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = "zbirenbaum/copilot.lua",
        config = true,
    },
    {

        "saghen/blink.cmp",
        lazy = true,
        dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
        opts = {
            snippets = { preset = "luasnip" },
            keymap = {
                ["<C-e>"] = { "hide", "fallback" },
                -- ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<C-y>"] = {
                    function(cmp)
                        -- blink 메뉴 열려있으면 blink 선택
                        if cmp.is_menu_visible() then
                            return cmp.select_and_accept()
                        end
                        -- Copilot ghost 있으면 Copilot 선택
                        local ok, copilot = pcall(require, "copilot.suggestion")
                        if ok and copilot.is_visible() then
                            copilot.accept()
                            return true
                        end
                    end,
                    "fallback",
                },
                ["<CR>"] = { "accept", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                ["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
                ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
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
                    },
                },
            },
        },
    },
}
