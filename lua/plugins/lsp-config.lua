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
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.intelephense.setup({ capabilities = capabilities })

			vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, {}) -- show diagnostics for line
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {}) -- jump to previous diagnostic in buffer
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {}) -- jump to next diagnostic in buffer
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- show documentation for what is under cursor
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- see available code actions
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {}) -- smart rename

			vim.diagnostic.config({
				virtual_text = false,
				float = {
					source = true,
				},
			})
		end,
	},
}
