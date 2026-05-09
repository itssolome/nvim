-- harpoon
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add file to harpoon list" })
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Show harpoon list" })

vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Go to harpoon 1" })
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Go to harpoon 2" })
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Go to harpoon 3" })
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Go to harpoon 4" })
vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end, { desc = "Go to harpoon 5" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Go to previous harpoon" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Go to next harpoon" })
