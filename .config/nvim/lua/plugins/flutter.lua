return {
  { "dart-lang/dart-vim-plugin" },
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
    opts = {
      flutter_path = "/opt/homebrew/bin/flutter", -- <-- this takes priority over the lookup
      lsp = {
        settings = {
          documentation = "full",
        },
      },
    },
  },
}
