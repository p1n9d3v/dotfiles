return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "lua",
                "query",
                "c",
                "bash",
                "cmake",
                "cpp",
                "css",
                "gitignore",
                "html",
                "http",
                "javascript",
                "jsdoc",
                "json",
                "json5",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "query",
                "regex",
                "sql",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
            config = function(_, opts)
                require("nvim-treesitter.configs").setup(opts)

                -- MDX
                vim.filetype.add({
                    extension = {
                        mdx = "mdx",
                    },
                })
                vim.treesitter.language.register("markdown", "mdx")
            end,
        },
    },
    {
        "nvim-treesitter/playground",
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        enabled = false,
    },
}
