local map = vim.keymap.set

map("n", "<space><space>x", "<cmd>source %<CR>")
map("n", "<space>x", ":.lua<CR>")
map("n", "<space>x", ":lua<CR>")

map("n", "<space>sd", "<cmd>lua vim.diagnostic.open_float()<CR>")

map("n", "<space>cp", "i<C-r>+")

-- Text Manipulation
map("v", ">", ">gv")              -- indent
map("v", "<", "<gv")              -- indent
map("v", "J", ":m '>+1<CR>gv=gv") -- move down
map("v", "K", ":m '<-2<CR>gv=gv") -- move up

-- Tests
map("n", "<space>ltx", "<cmd>PlenaryBustedFile %<CR>")
