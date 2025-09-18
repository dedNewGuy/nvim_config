return {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				-- Your config here
			})
		end,
	},
	-- Tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			styles = {
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = false },
				keywords = { italic = false },
				functions = {},
				variables = {},
				-- Background styles. Can be "dark", "transparent" or "normal"
				sidebars = "dark", -- style for sidebars, see below
				floats = "dark", -- style for floating windows
			},
		}
	},

	{
		"gbprod/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nord").setup({})
		end,
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
	},
}
