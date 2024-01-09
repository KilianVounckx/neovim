return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup {
            open_mapping = "<leader>tt",
            hide_numbers = true,
            shade_filetypes = {},
            start_in_insert = true,
            insert_mappings = false,
            terminal_mappings = false,
            persist_size = true,
            persist_mode = true,
            direction = "horizontal",
            close_on_exit = true,
            auto_scroll = true,
        }

        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
            vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end
}
