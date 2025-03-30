return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		{ "neovim/nvim-lspconfig" },
		{
			"williamboman/mason.nvim",
			build = function()
				pcall(vim.cmd, "MasonUpdate")
			end,
		},
		{ "williamboman/mason-lspconfig.nvim" },
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },
		{ "saadparwaiz1/cmp_luasnip" },
	},
	config = function()
		local lsp = require("lsp-zero")
		local cmp = require("cmp")
		local cmp_action = lsp.cmp_action()
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		-- Configuração de keymaps para LSP
		lsp.on_attach(function(_, bufnr)
			local function map(mode, keys, func, desc)
				vim.keymap.set(mode, keys, func, { buffer = bufnr, remap = false, desc = desc })
			end

			map("n", "gr", vim.lsp.buf.references, "LSP Goto Reference")
			map("n", "gd", vim.lsp.buf.definition, "LSP Goto Definition")
			map("n", "K", vim.lsp.buf.hover, "LSP Hover")
			map("n", "<leader>vws", vim.lsp.buf.workspace_symbol, "LSP Workspace Symbol")
			map("n", "<leader>vd", vim.diagnostic.setloclist, "LSP Show Diagnostics")
			map("n", "[d", vim.diagnostic.jump({ count = 1, float = true }), "Next Diagnostic")
			map("n", "]d", vim.diagnostic.jump({ count = -1, float = true }), "previous diagnostic")
			map("n", "<leader>vca", vim.lsp.buf.code_action, "LSP Code Action")
			map("n", "<leader>vrr", vim.lsp.buf.references, "LSP References")
			map("n", "<leader>vrn", vim.lsp.buf.rename, "LSP Rename")
			map("i", "<C-h>", vim.lsp.buf.signature_help, "LSP Signature Help")
		end)

		-- Configuração do Mason
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "dockerls" },
			handlers = {
				lsp.default_setup,
				lua_ls = function()
					require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
				end,
			},
		})

		-- Carregar snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Configuração do CMP
		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip", keyword_length = 2 },
				{ name = "buffer", keyword_length = 3 },
				{ name = "path" },
			}),
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),
				["<Tab>"] = cmp_action.luasnip_supertab(),
				["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
			}),
		})

		-- Configuração de autocompletar na linha de comando
		for _, cmd in ipairs({ "/", ":" }) do
			cmp.setup.cmdline(cmd, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = cmd == "/" and "buffer" or "path" },
				}, {
					{ name = "cmdline", option = { ignore_cmds = { "Man", "!" } } },
				}),
			})
		end
	end,
}
