vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.gd",
        group = "AutoFormat",
        callback = function()
            local current_file = vim.api.nvim_buf_get_name(0) -- Get the full path of the current buffer.
            local command = "gdformat " .. vim.fn.shellescape(current_file) -- shellescape the file path.
            vim.fn.system(command) -- execute the format command
	    vim.cmd("edit") -- Reload the file

	    -- Lint the file and print the output
	    local lint_command = "gdlint " .. vim.fn.shellescape(current_file)
            local lint_result = vim.fn.system(lint_command)

            if lint_result ~= "" then
                print("GDLint output:\n" .. lint_result)
            end
        end,
    }
)
