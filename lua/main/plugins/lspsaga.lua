return {
	{
		"nvimdev/lspsaga.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lspsaga").setup({
				layout = "normal",
			})
		end,
		vim.keymap.set("n", "<leader>sd", "<cmd>Lspsaga peek_definition<CR>", opts), -- leader show defination
		vim.keymap.set("n", "<leader>st", "<cmd>Lspsaga hover_doc<CR>", opts),
	},
}
