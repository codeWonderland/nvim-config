vim.api.nvim_create_augroup("AutoCheck", {})

vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.rs",
        group = "AutoCheck",
        callback = function()
            local check_command = "cargo check"
            local check_result = vim.fn.system(check_command) -- execute the check command

            if check_result ~= "" then
                print("cargo check output:\n" .. check_result)
            end
        end,
    }
)
