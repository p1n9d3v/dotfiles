-- return {
--     "greggh/claude-code.nvim",
--     dependencies = {
--         "nvim-lua/plenary.nvim", -- Required for git operations
--     },
--     opts = {
--         keymaps = {
--             toggle = {
--                 normal = "<C-,>",
--                 terminal = "<C-,>",
--                 variants = {
--                     continue = "<leader>cC", -- Normal mode keymap for Claude Code with continue flag
--                     verbose = "<leader>cV", -- Normal mode keymap for Claude Code with verbose flag
--                 },
--             },
--         },
--     },
--     config = function()
--         require("claude-code").setup()
--     end,
-- }

-- init.lua 또는 플러그인 설정 파일
return {
    "greggh/claude-code.nvim",
    enabled = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("claude-code").setup({
            keymaps = {
                toggle = {
                    normal = "<C-,>",
                    terminal = "<C-,>",
                    variants = {
                        continue = "<leader>cC",
                        verbose = "<leader>cV",
                    },
                },
            },
        })

        -- 터미널 탈출 키 설정
        vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
    end,
}
