return {
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "VeryLazy",
        priority = 1000,
        opts = {
            preset = "ghost",
            multilines = {
                enabled = true,
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = { diagnostics = { virtual_text = false } },
    },
}
