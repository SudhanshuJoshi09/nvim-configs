return {
	{
		"mrcjkb/haskell-tools.nvim",
		version = "^3", -- Recommended
		ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
	},
	{
		"rescript-lang/vim-rescript",
		dependencies = {
			"neovim/nvim-lspconfig",
			"j-hui/fidget.nvim",
			"mrcjkb/haskell-tools.nvim",
		},
		tag = "v2.1.0",
		config = function()
			local lspconfig = require("lspconfig")
			require("fidget").setup({})
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
				},
			})
			lspconfig.rescriptls.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.hls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.jsserver.setup({})
		end,
	},
}
