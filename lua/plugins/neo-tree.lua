return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim", -- lua functions that many plugins use
		"MunifTanjim/nui.nvim", -- UI Component Library for Neovim
		"nvim-tree/nvim-web-devicons", -- vs-code like icons
	},
	lazy = false, -- neo-tree will lazily load itself
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>w", ":Neotree filesystem close<CR>", {})
	end,
}
