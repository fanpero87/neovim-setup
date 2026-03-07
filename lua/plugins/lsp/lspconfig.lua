return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/lazydev.nvim", opts = {} },
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		vim.lsp.config("intelephense", {
			filetypes = { "php" },
		})

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

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true}
		    vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
		    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
		    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
		    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
		    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
		    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
		    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions
		    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
	    end,
    })
  end,
}
