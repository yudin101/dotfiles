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
			markdown = { "oxfmt" },
			javascript = { "oxfmt" },
			typescript = { "oxfmt" },
			javascriptreact = { "oxfmt" },
			typescriptreact = { "oxfmt" },
			json = { "oxfmt" },
			html = { "oxfmt" },
			css = { "oxfmt" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			python = { "black" },
			sh = { "shfmt" },
			sql = { "pg_format" },
		},
		formatters = {
			pg_format = {
				command = "pg_format",
				args = { "-u", "1", "-f", "1", "-s", "2", "-B", "-" },
				stdin = true,
			},
		},
	},
}
