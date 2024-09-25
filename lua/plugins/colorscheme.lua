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
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false
    },
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 100,
    config = function() end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      transparent_background = false,
    },
  },
}
