return {
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"williamboman/mason.nvim",
			"VonHeikemen/lsp-zero.nvim",
			"rescript-lang/vim-rescript",
			"neovim/nvim-lspconfig",
			-- add commas at the end using (select all the lines in visual mode) then :s/$/,
			-- replaced ' with " using (select all the lines in visual mode) then :s/'/"/g (without g only the first part get's selected .. )
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",

			-- snippet engine.
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",

			"j-hui/fidget.nvim",
		},

		config = function()
			require("fidget").setup({})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local cmp = require("cmp")
			local cmp_select = { behaviour = cmp.SelectBehavior.Select }

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})

			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"tsserver",
					"rescriptls",
					"pylsp",
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							on_attach = on_attach,
							capabilities = capabilities,
						})
					end,
				},
			})
		end,
	},
}
