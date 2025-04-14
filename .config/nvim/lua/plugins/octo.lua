return {
    "pwntester/octo.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        "folke/snacks.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("octo").setup({ enable_builtin = true })
    end,
    keys = {
        { "<leader>O", "<cmd>Octo<cr>", desc = "Octo" },
    },
}
