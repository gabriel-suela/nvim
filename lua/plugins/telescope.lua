-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        -- VDI: evita ficar “travando” com preview pesado
        preview = { timeout = vim.g.NVIM_VDI and 100 or 300 },
        file_ignore_patterns = { "%.git/", "node_modules/", "vendor/" },
      },
    })
  end,
}
