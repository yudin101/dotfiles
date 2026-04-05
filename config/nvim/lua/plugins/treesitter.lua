return {
	"nvim-treesitter/nvim-treesitter",
  branch = "main",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
      event = "InsertEnter",
			config = function()
				local config = require("nvim-ts-autotag")
				config.setup({
					opts = {
						enable_close = true,
						enable_rename = true,
					},
				})
			end,
		},
	},
	config = function()
		require("nvim-treesitter").setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
