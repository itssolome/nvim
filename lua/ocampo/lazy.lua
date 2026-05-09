local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
g.mapleader = " "

require("lazy").setup({
	{
		"xiyaowong/transparent.nvim",
	},
	{
  		"oxidescheme/nvim",
  		lazy = false,
  		priority = 1000,
	},
})
