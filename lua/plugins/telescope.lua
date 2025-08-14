return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function()
		local builtin = require('telescope.builtin')
		-- [P]roject
		vim.keymap.set('n', '<leader>pf', function ()
			builtin.find_files({
				no_ignore = true
			})
		end, { desc = "Telescope Find Files" })
		vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "Telescope Git Files" })
		vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = "Telescope Live Grep" })
		vim.keymap.set('n', '<leader>pt', builtin.tags, { desc = "Telescope Tags" })

		-- [F]ind
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Telescope Key Map" })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope Search Help" })
		vim.keymap.set('n', '<leader>fn', function ()
			builtin.find_files({ cwd = vim.fn.stdpath 'config' })
		end, { desc = "Telescope Search Help" })
	end
}
