return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<C-p>", function()
			builtin.find_files({ previewer = false })
		end, {})

		vim.keymap.set("n", "<C-l>", function()
			builtin.buffers({ previewer = false })
		end, {})

		vim.keymap.set("n", "<C-k>", function ()
      builtin.live_grep({previewer = false})
		end, {})

		require("telescope").setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					".git",
					"build",
					"dist",
					"__pycache__",
					"%.png$",
					"%.jpg$",
					"myenv",
					"venv",
					".venv",
				},
			},
		})
	end,
}
