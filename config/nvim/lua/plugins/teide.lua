return {
	"serhez/teide.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "darker",
		-- on_colors = function(colors)
		-- 	colors.bg = "#000000"
		-- end,
		on_highlights = function(highlights, colors)
			highlights.TelescopeNormal = { bg = none }
			highlights.TelescopePromptNormal = { bg = none }
			highlights.TelescopePromptBorder = { bg = none, fg = none }
			highlights.TelescopeResultsNormal = { bg = none }
			highlights.TelescopeResultsBorder = { bg = none }
		end,
	},
}
