return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup()
		end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme everforest]])
		end,
	},
	{
		"folke/lsp-colors.nvim",
		config = function()
			require("lsp-colors").setup({
				Error = "#db4b4b",
				Warning = "#e0af68",
				Information = "#0db9d7",
				Hint = "#10B981",
			})
		end,
	},

	{
		"m-demare/hlargs.nvim",
		config = function()
			require("hlargs").setup()
		end,
	},
}
