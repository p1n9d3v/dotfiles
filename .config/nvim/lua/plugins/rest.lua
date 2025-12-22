return {
    "rest-nvim/rest.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            opts.ensure_installed = opts.ensure_installed or {}
            table.insert(opts.ensure_installed, "http")
        end,
    },
    keys = {
        { "<leader>Rs", "<cmd>:Rest run<cr>", desc = "Run request under the cursor" },
        { "<leader>Ra", "<cmd>:Rest run", desc = "Run request with name" },
        { "<leader>Ro", "<cmd>:Rest open<cr>", desc = "Open result pane" },
    },
}
