return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            servers = {},
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = function(_)
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            local cmp = require("blink-cmp")
            -- disable a keymap
            -- keys[#keys + 1] = {
            --     "K",
            --     mode = { "n" },
            --     function() end,
            -- }
            -- keys[#keys + 1] = {
            --     "K",
            --     false,
            -- }
            -- keys[#keys + 1] = {
            --     "<C-k>",
            --     false,
            -- }
            -- keys[#keys + 1] = {
            --     "<C-z>",
            --     mode = { "i" },
            --     function()
            --         vim.lsp.buf.signature_help()
            --     end,
            -- }
            -- keys[#keys + 1] = {
            --     "<C-z>",
            --     mode = { "n" },
            --     function()
            --         vim.lsp.buf.hover()
            --     end,
            -- }
        end,
    },
}
