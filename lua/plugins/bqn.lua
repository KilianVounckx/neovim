return {
    {
        "https://git.sr.ht/~detegr/nvim-bqn",
        config = function()
            vim.g.nvim_bqn = "bqn"
        end,
    },
    {
        "mlochbaum/BQN",
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/editors/vim")
        end,
    },
}
