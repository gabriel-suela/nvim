return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "mason-org/mason.nvim",
        build = ":MasonUpdate",
        config = true,
      },
      {
        "mason-org/mason-lspconfig.nvim",
        config = function()
          local capabilities = require('blink.cmp').get_lsp_capabilities()
          require("mason-lspconfig").setup {
            capabilities = capabilities,
            ensure_installed = { "lua_ls", "pyright", "yamlls", "dockerls", "bashls", "gopls" },
            automatic_enable = true, -- new feature in v2
          }
        end,
      },
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            path = "${3rd}/luv/library",
            words = { "vim%.uv" },
          },
        },
      },
    },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.yamlls.setup({
        settings = {
          yaml = {
            validate = true,
            hover = true,
            completion = true,
            format = { enable = true },
            schemas = {
              kubernetes = { "*.yaml", "*.yaml.gotmpl" },   -- your gotmpl files
            },
          },
        },
      })
    end,
  },
}
