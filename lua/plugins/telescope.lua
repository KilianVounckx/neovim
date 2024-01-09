return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require("telescope").setup({
            defaults = {
                initial_mode = "normal",
            }
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files)
        vim.keymap.set("n", "<leader>pgf", builtin.git_files)
        vim.keymap.set("n", "<leader>pt", builtin.buffers)
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
