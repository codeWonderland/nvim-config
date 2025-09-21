vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd(
	"BufWritePost",
	{
		pattern = "*.vue",
		group = "AutoFormat",
		callback = function()
			local current_file = vim.api.nvim_buf_get_name(0)                                    -- Get the full path of the current buffer.
			local format_command = "prettier -w --tab-width 2 " ..
			vim.fn.shellescape(current_file)                                                     -- shellescape the file path.
			vim.fn.system(format_command)                                                        -- execute the format command
			vim.cmd("edit")                                                                      -- Reload the file
		end,
	}
)

local set = vim.opt_local

set.shiftwidth = 2
