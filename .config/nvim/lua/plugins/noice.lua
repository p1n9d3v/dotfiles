return {
    "folke/noice.nvim",
    opts = {
        routes = {
            {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            },
        },
        presets = {
            bottom_search = true,
            lsp_doc_border = true,
        },
    },
}
