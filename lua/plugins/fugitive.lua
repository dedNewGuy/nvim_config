return {
		"tpope/vim-fugitive",

		config = function()
				vim.keymap.set('n', '<leader>gs', ':Git<cr>')
		end
}
