return {
	"christoomey/vim-tmux-navigator",
	enabled = true,
	event = "VeryLazy",
	keys = {
		{ "<C-h>", "<cmd>TmuxNavigatorLeft<cr>", "Navigate Window Left" },
		{ "<C-j>", "<cmd>TmuxNavigatorDown<cr>", "Navigate Window Down" },
		{ "<C-k>", "<cmd>TmuxNavigatorUp<cr>", "Navigate Window Up" },
		{ "<C-l>", "<cmd>TmuxNavigatorRight<cr>", "Navigate Window Right" },
	},
}
