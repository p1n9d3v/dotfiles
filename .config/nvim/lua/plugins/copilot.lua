return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    enabled = true, -- ← 켜기
    opts = {
        suggestion = {
            enabled = false, -- blink ghost_text로 대체
            auto_trigger = true,
            keymap = {
                accept = false,
                next = "<M-]>",
                prev = "<M-[>",
            },
        },
        panel = { enabled = false },
        filetypes = {
            markdown = true,
            help = true,
        },
    },
}
