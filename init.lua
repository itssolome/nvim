vim = vim
fn = vim.fn
api = vim.api
cmd = vim.cmd
opt = vim.opt
g = vim.g

require("ocampo")

-- colorscheme
cmd([[colorscheme oxide]])
vim.opt.clipboard = "unnamedplus"

-- tabs
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.expandtab = true
vim.o.softtabstop = 2

-- Auto commands
api.nvim_create_autocmd("BufEnter", {
	pattern = "term://*",
	command = "startinsert",
})
