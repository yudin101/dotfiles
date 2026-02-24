return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- 1. Grab the "auto" theme object
		local custom_auto = require("lualine.themes.auto")

		-- 2. Force the background of all middle sections ('c') to black
		-- Most themes use section 'c' for the background fill
		local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
		for _, mode in ipairs(modes) do
			if custom_auto[mode] and custom_auto[mode].c then
				custom_auto[mode].c.bg = "#000000"
			end
		end

		require("lualine").setup({
			options = {
				theme = custom_auto, -- Use our modified theme
				globalstatus = true, -- Optional: cleaner look
			},
		})
	end,
}
