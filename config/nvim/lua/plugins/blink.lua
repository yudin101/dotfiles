return {
	"saghen/blink.cmp",
	version = "v0.*",
	build = function()
		require("blink.cmp").build():wait(60000)
	end,
	dependencies = { "saghen/blink.lib", "rafamadriz/friendly-snippets" },

	opts = {
		keymap = { preset = "default", ["<CR>"] = { "accept", "fallback" } },

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		cmdline = {
			completion = {
				menu = { auto_show = true },
			},
		},

		completion = {
			documentation = { auto_show = true, window = { border = "rounded" } },
			menu = { border = "rounded" },
		},

		snippets = { preset = "default" },
	},
}
