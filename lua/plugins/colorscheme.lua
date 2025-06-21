return {
	-- Tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {}
	},

	{
		'daneofmanythings/chalktone.nvim',
		priority = 1000,
		lazy = false,
		config = function()
			require('chalktone').setup()
		end
	}
}
