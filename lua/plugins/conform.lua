return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier" },
        json = { "prettier" },
        bash = { "beautysh" },
        yaml = { "prettier" },
        sh = { "shellcheck" },
        python = { "isort", "black" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
      formatters = {
        prettier = {
          options = {
            ft_parsers = {
              yaml = "yaml",
            },
            ignore_errors = true,
          },
        },
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>fd", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 10000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
