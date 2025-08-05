return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
		},
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({ automatic_installation = true })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.lsp.enable("bashls")
			vim.lsp.enable("cssls")
			vim.lsp.enable("html")
			vim.lsp.enable("intelephense")
			vim.lsp.enable("jsonls")
			vim.lsp.enable("nginx_language_server")
			vim.lsp.enable("tailwindcss")
			vim.lsp.enable("ls_ls")

			vim.diagnostic.config({
				virtual_text = true, -- Enable virtual text for diagnostics
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.INFO] = "",
						[vim.diagnostic.severity.HINT] = "󰌵",
					},
				},
				update_in_insert = false, -- Don't update diagnostics in insert mode
				severity_sort = true, -- Sort diagnostics by severity
				underline = { severity = vim.diagnostic.severity.ERROR },
				float = {
					border = "rounded",
					source = true,
				},
			})

			vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, {}) -- show diagnostics for line
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {}) -- jump to previous diagnostic in buffer
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {}) -- jump to next diagnostic in buffer
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- show documentation for what is under cursor
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- see available code actions
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {}) -- smart rename
		end,
	},
}
