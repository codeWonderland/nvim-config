-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
signcolumn=true -- this way gitsigns doesn't override numbers

vim.opt.shiftwidth = 4 -- number of spaces inserted when indenting

local map = vim.keymap.set

-- Text Manipulation
map("v", ">", ">gv") -- indent
map("v", "<", "<gv") -- indent
map("v", "J", ":m '>+1<CR>gv=gv") -- move down
map("v", "K", ":m '<-2<CR>gv=gv") -- move up

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

