-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lspconfig = require("lspconfig")

    local function has(cmd) return vim.fn.executable(cmd) == 1 end

    -- Diagnostics mais leves na VDI
    if vim.g.NVIM_VDI then
      vim.diagnostic.config({
        virtual_text = false,
        update_in_insert = false,
        severity_sort = true,
      })
    end

    local on_attach = function(_, bufnr)
      local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
      end

      map("n", "gd", vim.lsp.buf.definition, "Go to definition")
      map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
      map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
      map("n", "gr", vim.lsp.buf.references, "References")
      map("n", "K", vim.lsp.buf.hover, "Hover")
      map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
      map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")
      map("n", "<leader>lf", function()
        vim.lsp.buf.format({ timeout_ms = 3000 })
      end, "LSP format")
    end

    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Lua: lua-language-server (comando "lua-language-server")
    if has("lua-language-server") then
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            format = { enable = true },
          },
        },
      })
    end

    -- Terraform: terraform-ls
    if has("terraform-ls") then
      lspconfig.terraformls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end

    -- YAML: yaml-language-server (comando "yaml-language-server")
    if has("yaml-language-server") then
      lspconfig.yamlls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          yaml = {
            validate = true,
            hover = true,
            completion = true,
            schemaStore = { enable = true },
          },
        },
      })
    end

    -- Bash: bash-language-server
    if has("bash-language-server") then
      lspconfig.bashls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end

    -- Python: pyright-langserver
    if has("pyright-langserver") then
      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end

    -- Go: gopls
    if has("gopls") then
      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end,
}
