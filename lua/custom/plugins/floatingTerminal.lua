-- floatign terminal

-- Set the size of the Floaterm window
vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95
vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermNew<CR>', { noremap = true, silent = true })

-- Configure floating terminal colors (using highlight commands)
vim.cmd [[
 " Dracula theme colors
  "highlight Floaterm guibg=#282a36 guifg=#f8f8f2
  "highlight FloatermBorder guibg=#282a36 guifg=#6272a4

  " Gruvbox theme colors
  "highlight Floaterm guibg=#282828 guifg=#ebdbb2
  "highlight FloatermBorder guibg=#282828 guifg=#928374

  " Nord theme colors
  "highlight Floaterm guibg=#2E3440 guifg=#D8DEE9
  "highlight FloatermBorder guibg=#2E3440 guifg=#81A1C1

  " One Dark theme colors
  highlight Floaterm guibg=#282c34 guifg=#abb2bf
  highlight FloatermBorder guibg=#282c34 guifg=#61afef

  " Tokyo Night theme colors
  "highlight Floaterm guibg=#1f2335 guifg=#c0caf5
  "highlight FloatermBorder guibg=#1f2335 guifg=#565f89
]]

return {
  'voldikss/vim-floaterm',
}
