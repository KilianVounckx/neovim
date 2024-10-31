return {
    "tomtomjhj/coq-lsp.nvim",
    dependencies = {
        "whonore/Coqtail",
        "neovim/nvim-lspconfig",
    },
    config = function()
        vim.cmd [[ let g:loaded_coqtail = 1 ]]
        vim.cmd [[ let g:coqtail#supported = 0 ]]
        require("coq-lsp").setup({})
    end
}
