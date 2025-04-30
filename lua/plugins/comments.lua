return {
	{
		'numToStr/Comment.nvim',
		config = function()
			vim.keymap.set(
				"v",
				"<C-_>",
				'<ESC><CMD>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR>',
				{ desc = 'Comment toggle a block in visual mode' }
			)
		end
	}
}
