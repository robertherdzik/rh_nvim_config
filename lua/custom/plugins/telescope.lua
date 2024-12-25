local telescope = require 'telescope'

telescope.setup {
  defaults = {
    path_display = function(_, path)
      local utils = require 'telescope.utils'
      local sep = utils.get_separator()
      local split_path = vim.split(path, sep, { plain = true })

      if #split_path < 3 then
        return path -- Return the full path if it has fewer than three segments
      end

      -- Show the last two folders and the file
      return table.concat(split_path, sep, #split_path - 2)
    end,
  },
}

pcall(telescope.load_extension, 'fzf')

return {}
