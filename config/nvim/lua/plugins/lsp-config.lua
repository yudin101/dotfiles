return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" }, -- Make sure LSP loads early when opening files
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("ts_ls", { capabilities = capabilities })
		vim.lsp.config("cssls", { capabilities = capabilities })
		vim.lsp.config("html", { capabilities = capabilities })
		vim.lsp.config("clangd", { capabilities = capabilities })

		-- Pyright setup without restricting filetypes
		vim.lsp.config("pyright", {
			capabilities = capabilities,
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic",
						useLibraryCodeForTypes = true,
						autoSearchPaths = true,
						diagnosticMode = "workspace",
					},
				},
			},
		})
	end,
}
