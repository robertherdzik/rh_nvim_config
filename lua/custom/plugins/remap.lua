function FindTODOGlobally()
  require('telescope.builtin').live_grep { default_text = '// ↱TODO➤' }
end

-- Higlight search for entire regex e.g if we do /vim.* - it will higlight satyfying part of the lane
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Moving selected code up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- While jumping middle page, coursor is in the middle of screen
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- While searching, courson is always in the middle of screen
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Start lazy git
vim.keymap.set('n', '<leader>g', function()
  vim.cmd 'FloatermNew --name=lazygit lazygit'
end, { desc = 'Open git' })

-- Start with replace higlighted word
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Never has less than x lines below once scrolling
vim.opt.scrolloff = 8
vim.opt.relativenumber = true

-- Puts paste action into void register then we can hit `p` and dont lose what we had in register
vim.keymap.set('x', '<leader>p', '"_dP')

-- // TODO []: Keep or remove
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Show files in tree
vim.keymap.set('n', '<leader>ff', ':NvimTreeFindFile<CR>', { silent = true, noremap = true, desc = 'Find file [NvimTree]' })
vim.keymap.set('n', '<leader>fl', ':NvimTreeResize 55<CR>', { silent = true, noremap = true, desc = 'Big tree [NvimTree]' })
vim.keymap.set('n', '<leader>fs', ':NvimTreeResize 30<CR>', { silent = true, noremap = true, desc = 'Small tree [NvimTree]' })

-- Define the keymap in normal mode Tuist
vim.api.nvim_set_keymap('n', '<leader>xb', ':!tuist build<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>xt', ':!tuist test<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', ':lua FindTODOGlobally()<CR>', { noremap = true, silent = true })

return {}
