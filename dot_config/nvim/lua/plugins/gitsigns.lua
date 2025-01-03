return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 200,
			ignore_whitespace = false,
			virt_text_priority = 100,
			use_focus = true,
		},
	},
	keys = {
		{ "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { silent = true } },
	},
}
