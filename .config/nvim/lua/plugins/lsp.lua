return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            -- servers = {
            --     lua_ls = {
            --         settings = {
            --             Lua = {
            --                 completion = {
            --                     keywordSnippet = "Both",
            --                 },
            --             },
            --         },
            --     },
            -- },
            inlay_hints = { enabled = false },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = function(_, opts)
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            -- change a keymap

            for i, key in ipairs(keys) do
                if key[1] == "<c-k>" then
                    keys[i] = { "<c-k>", false }
                end
            end
        end,
    },
}
