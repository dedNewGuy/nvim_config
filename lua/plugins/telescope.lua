return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Telescope Find Files" })
		vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Telescope Git Files" })
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Telescope Key Map" })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope Search Help" })
	end
}
