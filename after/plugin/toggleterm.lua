require("toggleterm").setup({
  open_mapping = "<leader>t",
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  start_in_insert = true,
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = "float",
  close_on_exit = true, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'double'
    -- like `size`, width and height can be a number or function which is passed the current terminal
    -- winblend = 3,
    -- zindex = <value>,
  },
  -- winbar = {
  --   enabled = false,
  --   name_formatter = function(term) --  term: Terminal
  --     return term.name
  --   end
  -- },
})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
