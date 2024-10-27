-- floatign terminal

-- Set the size of the Floaterm window
vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95
vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermNew<CR>', { noremap = true, silent = true })

return {
  'voldikss/vim-floaterm',
}
