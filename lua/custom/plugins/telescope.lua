local telescope = require('telescope')

telescope.setup {
defaults = { 
    path_display = function (_, path)
      -- Show only last files not entire path 
      local tail = require('telescope.utils').path_tail(path)
      return tail
    end,
  },
}

pcall(telescope.load_extension, "fzf")

return {}
