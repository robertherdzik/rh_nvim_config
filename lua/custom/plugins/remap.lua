return {
	vim.keymap.set("n", "<leader>pv", vim.cmd.Ex),
	-- Define the keymap in normal mode Tuist 
	vim.api.nvim_set_keymap('n', '<leader>xb', ':!tuist build<CR>', { noremap = true, silent = true }),
	vim.api.nvim_set_keymap('n', '<leader>xt', ':!tuist test<CR>', { noremap = true, silent = true })

}
