-- lua/plugins/oil.lua
return {
		{
				"stevearc/oil.nvim",
				-- Optional dependencies
				dependencies = { "nvim-tree/nvim-web-devicons" },
				config = function()
						require("oil").setup()
				end,
				lazy = false,
		}
}
