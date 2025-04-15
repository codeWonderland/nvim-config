-- package manager setup
require("config.lazy")

-- editor preferences
vim.cmd.colorscheme("habamax")

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4 -- a TAB character looks like 4 spaces
vim.bo.tabstop = 4
vim.o.expandtab = true -- Pressing a TAB key will insert spaces
vim.o.softtabstop = 4 -- number of spaces inserted on TAB
vim.o.shiftwidth = 4 -- number of spaces inserted when indenting
vim.bo.shiftwidth = 4
vim.o.shiftround = true
