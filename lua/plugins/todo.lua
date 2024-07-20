return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		signs = true,
		highkeywords = {
			TODO = { icon = " ", color = "info" },
		},
		highlight = {
			keyword = "bg",
		},
		colors = {
			info = { "DiagnosticInfo", "\\(TODO:\\)", "#ff8c00" },
		},
	},
}

-- TODO:
