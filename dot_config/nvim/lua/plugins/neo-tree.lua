return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_by_name = {
            "node_modules",
          },
          always_show = {
            ".gitignore",
            ".env",
            ".env.example",
            ".env.local",
            ".dockerignore",
            "dist",
            ".env.test",
            "scripts",
            ".eslintrc",
            ".eslintrc.cjs",
            ".eslintrc.js",
            ".github",
          },
          never_show = {
            ".DS_Store",
          },
        },
      },
    })
  end,
}
