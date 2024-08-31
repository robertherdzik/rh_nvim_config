local telescope = require('telescope')

telescope.setup {
  defaults = {
    -- Customize the path display
    path_display = function(_, path)
      -- Split the path by "/"
      local parts = vim.split(path, '/')
      
      -- Handle paths with fewer than four parts
      if #parts <= 3 then
        return path
      end

      -- Function to shorten folder names longer than 10 characters
      local function shorten_name(name)
        if #name > 10 then
          return name:sub(1, 3) .. "..." .. name:sub(-2)
        end
        return name
      end

      -- Get the first two directories and shorten them if necessary
      local first_two_folders = table.concat({
        shorten_name(parts[1]),
        shorten_name(parts[2])
      }, '/')
      
      -- Parent folder and the filename (full names, not shortened)
      local parent_folder = parts[#parts - 1]
      local filename = parts[#parts]

      -- Return the formatted path
      return first_two_folders .. '/.../' .. parent_folder .. '/' .. filename
    end,
  },
}

pcall(telescope.load_extension, "fzf")

return {}
