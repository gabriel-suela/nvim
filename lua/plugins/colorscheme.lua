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
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "VeryLazy",
    opts = function()
      return {
        flavour = "macchiato",
        transparent_background = true,
      }
    end,
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
  -- {
  --   "oxfist/night-owl.nvim",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   name = "night-owl",
  --   config = function()
  --     require("night-owl").setup()
  --     vim.cmd.colorscheme("night-owl")
  --
  --     vim.cmd("highlight Normal guibg=None guifg=None")
  --     vim.cmd("highlight NonText guibg=None guifg=None")
  --     vim.cmd("highlight SignColumn guibg=None guifg=None")
  --     vim.cmd("highlight EndOfBuffer guifg=#001728")
  --     -- vim.cmd('highlight VertSplit ctermbg=NONE ctermfg=15')
  --     vim.cmd("highlight VertSplit guibg=#011627 guifg=#011627")
  --     vim.cmd("highlight GitGutterAdd guibg=NONE guifg=#22da6e")
  --     vim.cmd("highlight GitGutterChange guibg=NONE guifg=#21c7a8")
  --     vim.cmd("highlight GitGutterChangeDelete guibg=NONE guifg=#ef5350")
  --     vim.cmd("highlight GitGutterDelete guibg=NONE guifg=#ef5350")
  --     vim.cmd("highlight DiagnosticSignError guibg=NONE guifg=#e27878")
  --     vim.cmd("highlight DiagnosticSignWarn guibg=NONE guifg=#e27878")
  --     vim.cmd("highlight DiagnosticSignHint guibg=NONE")
  --     vim.cmd("highlight IblIndent guifg=#4b6479 gui=nocombine")
  --     vim.cmd("highlight FloatermBorder guibg=NONE guifg=#44657b")
  --     vim.cmd("highlight FloatBorder guibg=None guifg=#44657b")
  --     vim.cmd("highlight SignifySignAdd guibg=none guifg=#22da6e")
  --     vim.cmd("highlight SignifySignChange guibg=none guifg=#ffeb95")
  --     vim.cmd("highlight SignifySignDelete guibg=none guifg=#ef5350")
  --     vim.cmd("highlight BufferLineSeparator guibg=None guifg=#161821")
  --     vim.cmd("highlight TroubleSignOther guibg=None guifg=green")
  --     vim.cmd("highlight TroubleFoldIcon guifg=None")
  --     vim.cmd("highlight TroubleCount guibg=None")
  --     vim.cmd("highlight TelescopeBorder guifg=#44657b")
  --     vim.cmd("highlight TelescopePromptBorder guifg=#44657b")
  --     vim.cmd("highlight TelescopeResultsBorder guifg=#44657b")
  --     vim.cmd("highlight FPerson guifg=#4c5375 guibg=#1E2132")
  --     vim.cmd("highlight Pmenu guibg=#161821")
  --     vim.cmd("highlight CmpPmenu guifg=#8ab8c2")
  --     vim.cmd("highlight CmpPmenuBorder guifg=#44657b")
  --     -- these statusline bg colors are different because thus way it hides the caret
  --     vim.cmd("highlight StatusLine guifg=#001625 guibg=#001625")
  --     vim.cmd("highlight StatusLineNC guifg=#001625 guibg=#001624")
  --     vim.cmd("highlight NvimTreeIndentMarker guifg=#4b6479")
  --     vim.cmd("highlight NvimTreeEndOfBuffer guifg=#011627")
  --     vim.cmd("highlight NvimTreeFolderArrowOpen guifg=#4b6479")
  --     vim.cmd("highlight NvimTreeFolderArrowClosed guifg=#4b6479")
  --     vim.cmd("highlight NvimTreeNormal guifg=#5f7e97")
  --     vim.cmd("highlight NvimTreeCursorLine guibg=None")
  --     -- vim.cmd('highlight WinSeparator guifg=#4b6479')
  --     vim.cmd("highlight WinSeparator guifg=#011627")
  --
  --     vim.cmd("highlight NeoTreeIndentMarker guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeGitIgnored guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeDimText guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeStats guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeStatsHeader guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeWinSeparator guibg=NONE ctermfg=15")
  --     vim.cmd("highlight NeoTreeTabInactive guifg=#4b6479")
  --     vim.cmd("highlight NeoTreeTabSeparatorInactive guifg=#011627")
  --     vim.cmd("highlight NeoTreeTabSeparatorActive guifg=#011627")
  --     vim.cmd("highlight NeoTreeNormal guibg=None guifg=None")
  --   end,
  -- },
}
