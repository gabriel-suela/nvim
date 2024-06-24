return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = false,
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
    },
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 100,
    config = function()
    end,
  },
  {
    "rockyzhang24/arctic.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
    branch = "main",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
    end,
    opts = {
      transparent_background = true
    }
  },
}
