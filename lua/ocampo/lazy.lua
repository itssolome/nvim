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
	-- formatter
	{
		"stevearc/conform.nvim",
		opts = {},
	},

	-- editor
	{
		"altermo/ultimate-autopair.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
		branch = "v0.6",
		opts = {},
	},
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("plugins.nvim-tree")
		end,
	},
	-- colorscheme
	{
		"xiyaowong/transparent.nvim",
	},
	{
  		"oxidescheme/nvim",
  		lazy = false,
  		priority = 1000,
	},
})
