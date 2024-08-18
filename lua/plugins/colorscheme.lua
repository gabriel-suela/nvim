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
    config = function() end,
  },
  {
    'projekt0n/github-nvim-theme',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })
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
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "warmer",
    },
  },
  {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
      vim.cmd([[colorscheme visual_studio_code]])
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function() end,
    opts = {
      transparent_background = true,
    },
  },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_better_performance = 1
      -- Fonts
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_transparent_background = 2
      -- Themes
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim"  -- Background of floating windows

      local configuration = vim.fn["gruvbox_material#get_configuration"]()
      local palette = vim.fn["gruvbox_material#get_palette"](
        configuration.background,
        configuration.foreground,
        configuration.colors_override
      )
      local highlights_groups = {
        FoldColumn = { bg = "none" },
        SignColumn = { bg = "none" },
        Normal = { bg = "none" },
        NormalNC = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        TelescopeBorder = { bg = "none" },
        TelescopeNormal = { fg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopeResultsNormal = { bg = "none" },
        Visual = { bg = palette.bg_statusline3[1] },
        TelescopeSelection = { bg = palette.bg_visual_blue[1] },
        ColorColumn = { bg = palette.bg_visual_blue[1] },
        CursorLine = { bg = palette.bg0[1], blend = 15 },
        GitSignsAdd = { fg = palette.green[1], bg = "none" },
        GitSignsChange = { fg = palette.yellow[1], bg = "none" },
        GitSignsDelete = { fg = palette.red[1], bg = "none" },
        IndentBlanklineContextChar = { fg = palette.grey1[1] },
        IndentBlanklineIndent1 = { fg = palette.bg5[1] },
      }
      for group, styles in pairs(highlights_groups) do
        vim.api.nvim_set_hl(0, group, styles)
      end
    end,
  },
}
