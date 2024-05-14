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
    "shaunsingh/nord.nvim",
    name = "nord",
    priority = 1000,
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
  { "Mofiqul/vscode.nvim", lazy = false, priority = 1000 },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    event = "VeryLazy",
    config = function()
      vim.g.gruvbox_material_better_performance = 1
      -- Fonts
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_transparent_background = 1
      -- Themes
      vim.g.gruvbox_material_foreground = "hard"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows

      -- vim.cmd('colorscheme gruvbox-material')
    end,
  },
}
