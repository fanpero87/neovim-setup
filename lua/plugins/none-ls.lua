return {
	"nvimtools/none-ls.nvim",
  dependencies = { "nvimtools/none-ls-extras.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.pint,          -- Laravel Pint (Laravel projects)
        null_ls.builtins.formatting.php_cs_fixer,  -- Alternative for non-Laravel PHP
        null_ls.builtins.formatting.shfmt,          -- bash/sh formatter
        null_ls.builtins.diagnostics.shellcheck,    -- bash static analysis
        require("none-ls.formatting.blade_formatter"), -- from extras
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
