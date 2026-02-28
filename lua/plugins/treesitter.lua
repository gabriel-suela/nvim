-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local function big_file(buf)
      local max = 200 * 1024
      local name = vim.api.nvim_buf_get_name(buf)
      if name == "" then return false end
      local ok, stat = pcall(vim.loop.fs_stat, name)
      return ok and stat and stat.size and stat.size > max
    end

    require("nvim-treesitter.configs").setup({
      -- No RHEL8 eu recomendo você instalar parsers manualmente só do que usar.
      -- Você pode deixar vazio e rodar :TSInstall lua yaml bash json terraform go python
      ensure_installed = {},
      auto_install = false, -- VDI-safe
      highlight = {
        enable = true,
        disable = function(_, buf)
          return vim.g.NVIM_VDI and big_file(buf)
        end,
      },
      indent = { enable = true },
    })
  end,
}
