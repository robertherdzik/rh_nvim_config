function FindTODOGlobally()
  require('telescope.builtin').live_grep { default_text = '// ↱TODO➤' }
end

-- Higlight search for entire regex e.g if we do /vim.* - it will higlight satyfying part of the lane
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Never has less than x lines below once scrolling
vim.opt.scrolloff = 8

-- Puts paste action into void register then we can hit `p` and dont lose what we had in register
vim.keymap.set('x', '<leader>p', '"_dP')

vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- Define the keymap in normal mode Tuist
vim.api.nvim_set_keymap('n', '<leader>xb', ':!tuist build<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>xt', ':!tuist test<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', ':lua FindTODOGlobally()<CR>', { noremap = true, silent = true })

return {}
