-- editor preferences

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 1

vim.opt.shiftwidth = 4 -- number of spaces inserted when indenting

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }


-- colors

vim.cmd.colorscheme("habamax")

vim.cmd("highlight MiniStatuslineDevInfo guifg=#ffffff")
vim.cmd("highlight MiniStatuslineFilename guifg=#ffffff")
vim.cmd("highlight MiniStatuslineFileinfo guifg=#ffffff")
vim.cmd("highlight NormalFloat guibg=#0e0e0f")
vim.cmd("highlight FloatBorder guibg=#0e0e0f")
vim.cmd("highlight FloatBorder guifg=#92799d")
