return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" }, -- Make sure LSP loads early when opening files
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    vim.lsp.config("pyrefly", {
      cmd = { "pyrefly", "lsp" },
      filetypes = { "python" },
      root_markers = { "pyrefly.toml", "pyproject.toml", "setup.py", ".git" },
      capabilities = capabilities,
    })

    -- vim.lsp.config("ts_ls", {
    --   init_options = {
    --     preferences = {
    --       includeCompletionsForModuleExports = false,
    --       includeCompletionsWithInsertTextRedirect = false,
    --     },
    --   },
    --   on_attach = function(client)
    --     client.server_capabilities.semanticTokensProvider = nil
    --   end,
    -- })

    vim.lsp.config("tsc", {
      cmd = { "bunx", "tsc", "--lsp", "--stdio" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { "tsconfig.json", "package.json", ".git" },
      on_attach = function(client)
        client.server_capabilities.semanticTokensProvider = nil
      end,
    })

    vim.lsp.enable({ "tsc", "cssls", "html", "clangd", "pyrefly" })
  end,
}
