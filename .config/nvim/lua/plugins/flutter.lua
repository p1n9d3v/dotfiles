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

            -- debugger = {
            --   enabled = true,
            --   run_via_dap = true,
            --   exception_breakpoints = {},
            --   register_configurations = function(paths)
            --     local dap = require("dap")
            --     -- See also: https://github.com/akinsho/flutter-tools.nvim/pull/292
            --     dap.adapters.dart = {
            --       type = "executable",
            --       command = paths.flutter_bin,
            --       args = { "debug-adapter" },
            --     }
            --     dap.configurations.dart = {}
            --   end,
            -- },
        },
    },
}
