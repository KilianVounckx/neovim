vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

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
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100"

vim.opt.list = true
vim.opt.listchars = "eol:↵,tab:→·,lead:·,trail:·,nbsp:⍽,extends:◣,precedes:◢"

vim.opt.timeout = false

vim.filetype.add({ extension = { ua = "uiua" } })
vim.filetype.add({ extension = { bqn = "bqn" } })

vim.opt.shell = "/home/kilianvounckx/.local/opt/cargo/bin/nu"
