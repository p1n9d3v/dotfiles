return {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
        -- add any opts here
        -- for example
        provider = "claude",
        providers = {
            claude = {
                endpoint = "https://api.anthropic.com",
                model = "claude-sonnet-4-20250514", -- your desired model (or use gpt-4o, etc.)
                timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
                extra_request_body = {
                    temperature = 0.3,
                    max_tokens = 20480,
                    --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
                },
            },
            gemini = {
                endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
                model = "gemini-2.5-pro",
                timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
                extra_request_body = {
                    temperature = 0.3,
                    max_tokens = 20480,
                    --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
                },
            },
            ollama = {
                model = "llama3.2:latest",
            },
        },
        -- hints = { enabled = false },
        file_selector = {
            provider = "snacks",
            provider_opts = {},
        },
        behaviour = {
            auto_suggestions = false,
        },
        web_search_engine = {
            provider = "google", -- tavily, serpapi, searchapi, google, kagi, brave, or searxng
            proxy = nil, -- proxy support, e.g., http://127.0.0.1:7890
        },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "echasnovski/mini.pick", -- for file_selector provider mini.pick
        "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
        "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
        "ibhagwan/fzf-lua", -- for file_selector provider fzf
        "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
        -- "zbirenbaum/copilot.lua", -- for providers='copilot'
        {
            -- support for image pasting
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
                -- recommended settings
                default = {
                    embed_image_as_base64 = false,
                    prompt_for_file_name = false,
                    drag_and_drop = {
                        insert_mode = true,
                    },
                    -- required for Windows users
                    use_absolute_path = true,
                },
            },
        },
        {
            -- Make sure to set this up properly if you have lazy=true
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
        {
            "folke/which-key.nvim",
            opts = {
                spec = {
                    { "<leader>a", group = "ai" },
                },
            },
        },
    },
}
