vim.keymap.set("i", "jk", "<ESC>", { desc = "Go back to normal mode" })

vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Automatically center cursor when jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank line to clipboard" })

-- Don't change register when pasting in visual mode
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without changing register" })

-- Don't change register when deleting
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "Delete without changing register" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "Delete without changing register" })

-- I don't like macros
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

