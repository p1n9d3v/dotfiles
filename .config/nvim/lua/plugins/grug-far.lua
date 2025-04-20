return {
    "MagicDuck/grug-far.nvim",
    version = "1.6.3", -- It is not fixed yet, maybe it will be fixed to neovim 0.11
    config = function()
        require("grug-far").setup({})
    end,
}
