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
	},

	{ "blazkowolf/gruber-darker.nvim" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function ()
			require("rose-pine").setup({
				styles = {
					bold = true,
					italic = false,
					transparency = false,
				},
			})
		end
	}

}
