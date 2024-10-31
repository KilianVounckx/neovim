return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>f", "<cmd>Telescope find_files<cr>", mode = "n",
            desc = "Telescope find files",
        },
        {
            "<leader>s", "<cmd>Telescope live_grep<cr>", mode = "n",
            desc = "Telescope live grep search",
        },
        {
            "<leader>b", "<cmd>Telescope buffers<cr>", mode = "n",
            desc = "Telescope buffers",
        },
        {
            "<leader>h", "<cmd>Telescope help_tags<cr>", mode = "n",
            desc = "Telescope help tags",
        },
    },
    opts = {
        defaults = {
            initial_mode = "normal",
        },
    },
}
