-- floatign terminal

vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermNew<CR>', { noremap = true, silent = true })

return {
  'voldikss/vim-floaterm',
}
