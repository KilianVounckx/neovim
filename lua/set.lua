vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80,100"

vim.opt.list = true
vim.opt.listchars = "eol:↵,tab:→·,lead:·,trail:·,nbsp:⍽,extends:◣,precedes:◢"

vim.opt.shell = os.getenv("HOME") .. "/.local/opt/cargo/bin/nu"
