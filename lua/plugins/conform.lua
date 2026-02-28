-- lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    local function has(cmd) return vim.fn.executable(cmd) == 1 end
    local function prefer_available(list)
      local out = {}
      for _, name in ipairs(list) do
        if has(name) then table.insert(out, name) end
      end
      return out
    end

    local function big_file(bufnr)
      local max = 200 * 1024 -- 200KB (ajuste se quiser)
      local name = vim.api.nvim_buf_get_name(bufnr)
      if name == "" then return false end
      local ok, stat = pcall(vim.loop.fs_stat, name)
      return ok and stat and stat.size and stat.size > max
    end

    conform.setup({
      formatters_by_ft = {
        lua = function() return prefer_available({ "stylua" }) end,
        terraform = function() return prefer_available({ "terraform_fmt" }) end,
        json = function() return prefer_available({ "prettier" }) end,
        yaml = function() return prefer_available({ "prettier" }) end,
        sh = function() return prefer_available({ "shfmt" }) end,
        bash = function() return prefer_available({ "shfmt" }) end,
        python = function() return prefer_available({ "black", "isort" }) end,
        go = function() return prefer_available({ "gofmt" }) end,
      },

      format_on_save = function(bufnr)
        if vim.g.NVIM_VDI and big_file(bufnr) then
          return
        end
        return {
          lsp_fallback = true, -- Se não tiver formatter externo, usa LSP
          timeout_ms = vim.g.NVIM_VDI and 2000 or 1000,
        }
      end,
    })

    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      conform.format({ lsp_fallback = true, timeout_ms = 5000 })
    end, { desc = "Format (Conform/LSP fallback)" })
  end,
}
