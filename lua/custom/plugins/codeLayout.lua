vim.opt.tabstop = 3 -- Number of spaces that a tab counts for
vim.opt.shiftwidth = 3 -- Number of spaces for indentation
vim.opt.softtabstop = 3 -- Insert spaces for the tab key
vim.opt.expandtab = true -- Use spaces instead of tabs

-- for .siwft files add closing method bracket
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'swift',
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'i', '{', '{<CR>}<Esc>O', { noremap = true, silent = true })
  end,
})
return {}
