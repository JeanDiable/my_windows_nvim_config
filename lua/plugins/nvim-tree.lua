-- 默认不开启nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--vim.keymap.set("n", "<leader>ml", require("nvim-tree.api").marks.list())
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)

require("nvim-tree").setup()

