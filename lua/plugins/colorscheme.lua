return {
	-- Tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {}
	},

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
