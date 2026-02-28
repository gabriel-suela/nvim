-- lua/plugins/neotree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- ícones (opcional, mas recomendado)
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = not vim.g.NVIM_VDI, -- VDI: menos watcher
      },
      window = {
        width = 32,
        mappings = {
          ["<esc>"] = "close_window",
        },
      },
    })

    -- <leader>e para toggle do explorer
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Explorer (Neo-tree)" })
  end,
}
