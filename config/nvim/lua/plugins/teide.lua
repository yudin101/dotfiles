return {
	"serhez/teide.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "darker",
		on_colors = function(colors)
			colors.bg = "#000000"
		end,
		on_highlights = function(highlights, colors)
			highlights.TelescopeNormal = { bg = colors.bg }
			highlights.TelescopePromptNormal = { bg = colors.bg }
			highlights.TelescopePromptBorder = { bg = colors.bg, fg = colors.fg_gutter }
			highlights.TelescopeResultsNormal = { bg = colors.bg }
			highlights.TelescopeResultsBorder = { bg = colors.bg, fg = colors.fg_gutter }
		end,
	},
}
