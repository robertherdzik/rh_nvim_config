-- floatign terminal

-- Set the size of the Floaterm window
vim.g.floaterm_width = 0.9 -- 90% of the screen width
vim.g.floaterm_height = 0.9 -- 90% of the screen height
vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermNew<CR>', { noremap = true, silent = true })

return {
  'voldikss/vim-floaterm',
}
