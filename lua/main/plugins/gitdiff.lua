return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup()
		-- local builtin = require("diffview.builtin")
		vim.keymap.set("n", "<leader>gd", "<CMD>DiffviewOpen origin/master...HEAD  --imply-local<CR>", {})
	end,
}
