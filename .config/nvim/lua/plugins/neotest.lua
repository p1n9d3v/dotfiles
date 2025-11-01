return {
    "nvim-neotest/neotest",
    dependencies = {
        "marilari88/neotest-vitest",
    },
    opts = {
        adapters = {
            ["neotest-vitest"] = {
                vitest_cmd = "pnpm --filter functions run test", -- for kint project
            },
        },
    },
}
