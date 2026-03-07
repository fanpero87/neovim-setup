return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

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

    -- LSP servers ONLY
		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"cssls",
				"emmet_ls",
				"eslint",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"prismals",
				"pyright",
				"tailwindcss",
				"ts_ls",
			},
		})

    -- Formatters, linters, DAP adapters go here
    mason_tool_installer.setup({
      ensure_installed = {
        "pint",
        "php-cs-fixer",
        "shfmt",
        "shellcheck",
        "php-debug-adapter",
      },
    })
	end,
}
