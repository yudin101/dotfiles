vim.o.winborder = "rounded"

require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.wrap = false
vim.opt.cursorline = true

vim.cmd.colorscheme("teide-darker")
vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-c-i:block"

vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, buffer = bufnr })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { noremap = true })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz<CR>", { noremap = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz<CR>", { noremap = true })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})

vim.keymap.set("n", "<A-w>", "<C-w>", { noremap = true, silent = true }) -- Swap Ctrl + W with Alt + W

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
