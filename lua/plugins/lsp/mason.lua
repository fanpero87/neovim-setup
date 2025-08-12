return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"cssls",
				"emmet_ls",
				"eslint",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"phpactor",
				"prismals",
				"pyright",
				"tailwindcss",
				"ts_ls",
			},
		})
	end,
}
