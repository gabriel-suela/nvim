return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "night",
		transparent = false,
		styles = {
			comments = { italic = false },
			keywords = { italic = false },
		},
	},
	{
		"Mofiqul/vscode.nvim",
		priority = 100,
		config = function()
			-- vim.cmd([[colorscheme vscode]])
		end,
	},
	{
		"rockyzhang24/arctic.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		name = "arctic",
		branch = "main",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme arctic")
		end,
	},
}
