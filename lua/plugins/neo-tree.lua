return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim", -- lua functions that many plugins use
		"MunifTanjim/nui.nvim", -- UI Component Library for Neovim
		"nvim-tree/nvim-web-devicons", -- vs-code like icons
	},
	lazy = false, -- neo-tree will lazily load itself
	opts = {
		enable_git_status = true,
		enable_diagnostics = true,
		default_component_configs = {
			indent = {
				indent_size = 2,
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "└",
				highlight = "NeoTreeIndentMarker",
				with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "󰜌",
			},
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
			},
		},
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", {}),
		vim.keymap.set("n", "<leader>w", ":Neotree filesystem close<CR>", {}),
	},
}
