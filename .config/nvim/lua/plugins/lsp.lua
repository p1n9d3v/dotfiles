return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                --     lua_ls = {
                --         settings = {
                --             Lua = {
                --                 completion = {
                --                     keywordSnippet = "Both",
                --                 },
                --             },
                --         },
                --     },
                -- vtsls = {
                --     settings = {
                --         typescript = {
                --             tsserver = {
                --                 maxTsServerMemory = "4096",
                --             },
                --         },
                --     },
                -- },
            },
            inlay_hints = { enabled = false },
        },
    },
}
