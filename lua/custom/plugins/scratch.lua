-- temporary note for nvim
return {
  'mtth/scratch.vim',

  keys = {
    { '<leader>sp', ':ScratchPreview<CR>', mode = 'n', noremap = true, silent = true, desc = 'Toggle scratch note' },
    -- { '<leader>sp', ':ScratchSelection<CR>', mode = 'v', noremap = true, silent = true },
  },

  init = function()
    vim.g.scratch_no_mappings = 1
    vim.g.scratch_persistence_file = '~/Documents/nvim_scratch.txt'
    -- vim.g.scratch_autohide = 0
  end,
}
