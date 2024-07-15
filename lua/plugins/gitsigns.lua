return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "┃" },
			change = { text = "┃" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "overlay", -- 'eol' | 'overlay' | 'right_align'
			delay = 100,
			ignore_whitespace = false,
			virt_text_priority = 100,
		},
	},
}
