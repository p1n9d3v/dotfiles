return {
    "stevearc/aerial.nvim",
    opts = {
        layout = {
            preset = "dropdown",
            preview = false,
            max_width = { 80, 0.4 },
        },
        on_attach = function(bufnr)
            -- 여기에 키맵 설정
            vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
    },
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
}
