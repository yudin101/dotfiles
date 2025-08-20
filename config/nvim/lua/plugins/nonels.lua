return {
	"nvimtools/none-ls.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.sqlfluff.with({
					extra_args = { "--dialect", "sqlite" },
				}),
			},
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({
				timeout_ms = 10000,
			})
		end, {})
	end,
}
