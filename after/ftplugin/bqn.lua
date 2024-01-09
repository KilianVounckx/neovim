vim.lsp.start({
    name = "bqnlsp",
    cmd = { "bqnlsp" },
})

vim.opt_local.keymap = "bqn"
vim.opt_local.iskeyword = "@,48-57,_,^×,^÷"
vim.opt_local.ignorecase = true

require("Comment.ft")
    .set("bqn", "#%s")
