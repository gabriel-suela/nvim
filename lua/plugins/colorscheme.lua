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
    opts = {
      transparent = true,
      disable_nvimtree_bg = true
    }
  },
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = {
          transparency = true,
          italic = false
        }
      })
    end
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
}
