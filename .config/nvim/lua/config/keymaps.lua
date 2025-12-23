-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- ESC --
keymap.set("n", "<C-]>", function()
    vim.fn.feedkeys(":", "n") -- ':' 명령어 입력을 시뮬레이션
end, opts)

-- Increament and Decreament number

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "db", "vbd")

-- Jump list
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Select all
-- keymap.set("n", "<A-a>", "gg<S-v>G")
keymap.set("v", "<S-a>", "gg<S-v>G")
keymap.set("n", "<D-a>", "gg<S-v>G")

-- New Tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")
keymap.set("n", "sj", "<C-w>j")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Move Line
keymap.set("n", "<C-a>", "^", opts)
keymap.set("n", "<C-i>", "^", opts)
keymap.set("n", "<C-e>", "$", opts)

-- Move Screen Up and Down
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- Visual Line
keymap.set("n", "<S-l>", "vg_", opts)
keymap.set("n", "<S-h>", "v_", opts)
keymap.set("v", "<S-l>", "$")
keymap.set("v", "<S-h>", "^")

-- Diagnostics
keymap.set("n", "<leader>xn", function()
    vim.diagnostic.goto_next()
end, {
    desc = "Jump to next diagnostic",
    noremap = true,
    silent = true,
})

keymap.set("n", "<leader>xp", function()
    vim.diagnostic.goto_prev()
end, {
    desc = "Jump to previous diagnostic",
    noremap = true,
    silent = true,
})

-- Multi Cursor
keymap.set("n", "<D-j>", "<Plug>(VM-Add-Cursor-Down)", opts)
keymap.set("n", "<D-k>", "<Plug>(VM-Add-Cursor-Up)", opts)

-- cmdline
keymap.set("c", "<C-j>", 'pumvisible() ? "<c-n>" : "<C-j>"', { expr = true, noremap = true })
keymap.set("c", "<C-k>", 'pumvisible() ? "<c-p>" : "<C-k>"', { expr = true, noremap = true })
keymap.set("c", "<C-e>", "<C-c>", opts)

--- hover and signature
keymap.set({ "n" }, "gk", function()
    vim.lsp.buf.signature_help()
end, vim.tbl_extend("force", opts, { desc = "Signature Help" }))

keymap.set({ "n" }, "gh", function()
    vim.lsp.buf.hover()
end, vim.tbl_extend("force", opts, { desc = "Hover" }))

keymap.set("v", "<C-e>", "$", opts)
keymap.set("v", "<C-a>", "^", opts)
keymap.set("v", "<S-D>l", "$", opts)
keymap.set("v", "<S-D>h", "^", opts)
