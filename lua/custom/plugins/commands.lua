vim.api.nvim_create_user_command('Lazyupdate', function()
	vim.cmd('Lazy! sync')
end, {})
