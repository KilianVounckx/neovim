return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup {
            size = function(term)
                if term.direction == "horizontal" then
                    return vim.o.lines * 0.3
                else
                    return vim.o.columns * 0.4
                end
            end,
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
            vim.keymap.set("n", "+", "<C-w>+", opts)
            vim.keymap.set("n", "-", "<C-w>-", opts)
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end
}
