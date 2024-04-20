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
          italic = true,
          transparency = false,
        },
      }
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = function()
      return {
        transparent_background = true,
      }
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
        colours_override = function(palette)
          palette.bg0 = "#1e2326"
        end,
      })
    end,
  },
  {
    "LunarVim/darkplus.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    event = "VeryLazy",
    config = function()
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "dim"
    end,
  },
}
