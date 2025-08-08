require("config.lazy")

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight after yank',
	group = vim.api.nvim_create_augroup('amengdv-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end
})

function ColorMyPencils(color, transparent)
	color = color or 'vim'
	vim.cmd.colorscheme(color)

	if transparent == nil then
		transparent = true
	else
		transparent = transparent
	end

	if transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		local curr_line_nr_hl = vim.api.nvim_get_hl(0, { name = "LineNr", link = false }) or {}
		vim.api.nvim_set_hl(0, "LineNr", {
			bg = "none",
			fg = curr_line_nr_hl.fg
		})
	end
end

ColorMyPencils("rose-pine",  true)


function SimpCompileMode()
	vim.cmd("cclose")
	local command = vim.fn.input("do: ")
	if not command then
		return
	end
	vim.fn.setqflist({}, ' ', { lines = vim.fn.systemlist(command) })
	vim.cmd("copen")
end

vim.keymap.set('n', '<leader>do', function ()
	pcall(SimpCompileMode)
end)
