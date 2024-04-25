return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        styles = {
          floats = "transparent",
          sidebars = "transparent",
        },
      }
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = function()
      return {
        disable_background = true,
        styles = {
          bold = true,
          italic = false,
          transparency = true,
        },
      }
    end,
  },
  {
    "LunarVim/darkplus.nvim",
    lazy = false,
    priority = 1000,
  },
}
