return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        disabled_filetypes = {
          statusline = {
            "dashboard",
            "neo-tree",
          },
        },
      }
    }
  end
}
