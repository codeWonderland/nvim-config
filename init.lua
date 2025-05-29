-- Leader (Must go before package manager setup)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- PATH updates
local npm_global_bin = os.getenv("HOME") .. "/.npm-global/bin"

if vim.fn.isdirectory(npm_global_bin) == 1 then
	vim.env.PATH = npm_global_bin .. ":" .. vim.env.PATH
else
	print("Warning: npm global bin directory not found at " .. npm_global_bin)
end

-- package manager setup
require("config.lazy")

-- custom plugins
local plugins_path = vim.fn.expand("~/.config/nvim/lua/custom/plugins/")
local escaped_path = plugins_path:gsub(" ", " ") -- Escape spaces for the shell

local handle = io.popen("ls " .. escaped_path, "r")
if handle then
	for filename in handle:lines() do
		if filename:match(".lua$") then
			local module_name = filename:gsub(".lua$", "")
			local success, err = pcall(require, "custom.plugins." .. module_name)
			if not success then
				vim.notify("Error loading plugin: custom.plugins." .. module_name .. " - " .. err, vim.log.levels.ERROR)
			end
		end
	end
	handle:close()
else
	vim.notify("Error opening plugin directory: " .. plugins_path, vim.log.levels.ERROR)
end
