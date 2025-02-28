return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
      },
      window = {
        mappings = {
          ["s"] = "",
          ["sv"] = "open_vsplit",
          ["ss"] = "open_split",
        },
      },
    },
  },
}
