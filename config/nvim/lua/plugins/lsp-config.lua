return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" }, -- Make sure LSP loads early when opening files
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

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

		vim.lsp.config("ts_ls", {
			init_options = {
				preferences = {
					includeCompletionsForModuleExports = false,
					includeCompletionsWithInsertTextRedirect = false,
				},
			},
			on_attach = function(client)
				client.server_capabilities.semanticTokensProvider = nil
			end,
		})

		vim.lsp.enable({ "ts_ls", "cssls", "html", "clangd", "pyright" })
	end,
}
