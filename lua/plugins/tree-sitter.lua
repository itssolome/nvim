local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

configs.setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc",
		"json",
		"javascript",
		"typescript",
		"tsx",
		"java",
		"html",
		"css",
		"php",
		"python",
		"bash",
		"zig",
	},
	sync_install = false,
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = true,
})

parser_config.blade = {
	install_info = {
		url = "https://github.com/EmranMR/tree-sitter-blade",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "blade",
}

vim.filetype.add({
	pattern = {
		[".*%.blade%.php"] = "blade",
	},
})
