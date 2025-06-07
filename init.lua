-- init.lua

vim.loader.enable()

-- Load the core Lazy.nvim setup, which will then load all other plugins including themes.
require("core.lazy")

-- Your other config files that contain mappings or autocmds (not plugin definitions)
require("config.mappings")
require("config.autocmd")

-- Require the options table, and defer setting ALL global options
local global_options_table = require("config.options")

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		for option_name, option_value in pairs(global_options_table) do
			if option_name == "runtimepath" then
				-- Handle runtimepath modification if needed
			else
				vim.o[option_name] = option_value
			end
		end
	end,
	once = true,
})
