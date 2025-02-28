return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  config = function()
    vim.g.lazygit_use_custom_config_file_path = 1
    vim.g.lazygit_config_file_path = "/Users/p1n9/.config/lazygit/config.yml"
  end,
  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit (Root Dir)" },
    { "<leader>gG", "<cmd>LazyGit<cr>", desc = "LazyGit (cwd)" },
    { "<leader>gf", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File History" },
    { "<leader>gl", "<cmd>LazyGitFilter<cr>", desc = "LazyGit Log" },
    { "<leader>gL", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit Log (cwd)" },
  },
}
