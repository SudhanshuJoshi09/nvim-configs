vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", {})
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>", {})
vim.keymap.set({ "n", "x" }, "<leader>sr", function()
	require("ssr").open()
end)
vim.keymap.set("n", "gd", "<C-]>", {})
