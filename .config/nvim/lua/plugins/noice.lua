return {
    "folke/noice.nvim",
    opts = {
        presets = {
            bottom_search = false,
        },
        routes = {
            {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            },
        },
    },
}
