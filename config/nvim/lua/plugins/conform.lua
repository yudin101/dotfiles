return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			python = { "black" },
			sh = { "shfmt" },
			sql = { "sqlfluff" },
		},
		formatters = {
			sqlfluff = {
				args = { "format", "--dialect", "sqlite", "-" },
			},
		},
	},
}
