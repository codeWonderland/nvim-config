local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Remove trailing whitespace on write
autocmd({ "BufWritePre" }, {
	group = augroup("remove-trailing-ws", {
		clear = true,
	}),
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

local set = vim.opt_local

set.shiftwidth = 4
set.tabstop = 4
