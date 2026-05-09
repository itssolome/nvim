local map = vim.keymap.set

-- mapleader key
g.mapleader = " "

-- nohl command
map("n", "<leader>nh", ":nohl<CR>", { desc = "nohl command" })

-- nvimtree
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader><S-e>", ":NvimTreeFocus<CR>")
