-- package manager setup
require("config.lazy")

-- custom commands
vim.api.nvim_create_user_command('Lazyupdate', function()
    vim.cmd('Lazy! sync')
end, {})

-- editor preferences
vim.cmd.colorscheme("habamax")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4 -- number of spaces inserted when indenting
