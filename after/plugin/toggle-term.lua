require("toggleterm").setup({
	size = 20,
	open_mapping = [[<C-_>]],
	direction = "float",
	float_opts = {
		border = "curved",
	},
	close_on_exit = true,
	start_in_insert = true,
})
