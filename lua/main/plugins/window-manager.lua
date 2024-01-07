return {
	{
		"anuvyklack/windows.nvim",
		dependencies = {
			"anuvyklack/middleclass",
			"anuvyklack/animation.nvim",
		},
		config = function()
			vim.o.winwidth = 10
			vim.o.winminwidth = 10
			vim.o.equalalways = false

			require("windows").setup()

			vim.keymap.set("n", "<leader>ef", "<cmd>WindowsMaximize<cr>", {}) -- Expand to full screen.
			vim.keymap.set("n", "<leader>ev", "<cmd>WindowsMaximizeVertically<cr>", {}) -- Expand vertically.
			vim.keymap.set("n", "<leader>eh", "<cmd>WindowsMaximizeHorizontally<cr>", {}) -- Expand Horizontally.
			vim.keymap.set("n", "<leader>ee", "<cmd>WindowsEqualize<cr>", {}) -- Equilize everything.
		end,
	},
}
