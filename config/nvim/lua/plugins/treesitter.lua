return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
  event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"bash",
				"json",
				"yaml",
				"toml",
				"markdown",
				"html",
				"css",
				"c",
			},

			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)

					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			}),
		})
	end,
}
