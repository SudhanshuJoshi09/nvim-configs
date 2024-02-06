return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nkrkv/nvim-treesitter-rescript",
		},
		opts = {
			ensure_installed = {
				"bash",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"tsx",
				"typescript",
				"vim",
				"yaml",
				"rescript",
			},
		},
	},
}
