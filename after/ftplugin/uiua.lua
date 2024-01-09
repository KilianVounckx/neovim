vim.lsp.start({
    name = "uiua_lsp",
    cmd = { "uiua", "lsp" },
})

require("Comment.ft")
    .set("uiua", "#%s")

