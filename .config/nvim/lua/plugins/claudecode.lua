return {
    "greggh/claude-code.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim", -- Required for git operations
    },
    opts = {
        keymaps = {
            toggle = {
                normal = "<C-,>",
                terminal = "<C-,>",
            },
        },
    },
    config = function()
        require("claude-code").setup()
    end,
}
