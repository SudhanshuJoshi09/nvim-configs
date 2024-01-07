return {
	{
		"rescript-lang/vim-rescript",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		tag = "v2.1.0",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.rescriptls.setup({})
		end,
	},
}
