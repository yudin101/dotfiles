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
			providers = {
				lsp = { max_items = 15 },
			},
		},

		cmdline = {
			completion = {
				menu = {
					auto_show = true,
				},
			},
		},

		completion = {
			documentation = {
				auto_show = false,
				window = { border = "rounded", winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder" },
			},
			menu = {
				border = "rounded",
				winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
			},
		},

		snippets = { preset = "default" },
	},
}
