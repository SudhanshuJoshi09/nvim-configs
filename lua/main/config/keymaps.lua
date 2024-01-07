vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", {})
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>", {})
vim.keymap.set({ "n", "x" }, "<leader>sr", function()
	require("ssr").open()
end)

vim.g.fubitive_domain_pattern = "ssh.bitbucket.juspay.net"
vim.g.fubitive_default_protocol = "ssh://"
