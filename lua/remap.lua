vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("n", "U", "<C-r>")

-- Move linew with J and K in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Automatically center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Don't change register when pasting in visual mode
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Don't change register when deleting
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Fuck macros
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
