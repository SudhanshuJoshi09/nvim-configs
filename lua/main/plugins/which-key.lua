return {
	-- which-key setup (In case I forget my keybindings)
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({})

			local wk = require("which-key")
			local telescope_builtin = require("telescope.builtin")

			wk.register({
				{
					p = {
						name = "Project",
						f = { telescope_builtin.find_files, "Find Files" },
						g = { telescope_builtin.live_grep, "Grep Project" },
						b = { telescope_builtin.buffers, "Find Buffers" },
					},
				},
				{
					s = { name = "Split Window" },
				},
				{
					e = { name = "Expand Window" },
				},
				{
					g = { name = "Git Options" },
				},
				{
					t = { name = "Trouble", t = { require("trouble").toggle, "Toggle" } },
				},
			}, { prefix = "<leader>" })
		end,
	},
}
