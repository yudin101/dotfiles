require("config.lazy")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")

vim.cmd("set nowrap")
vim.cmd("set cursorline")

vim.cmd("colorscheme gruvbox")
vim.cmd("set termguicolors")
vim.cmd("set guicursor=n-v-c-i:block")

vim.cmd("set clipboard=unnamedplus")

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, buffer = bufnr })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz<CR>", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz<CR>", { noremap = true })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
