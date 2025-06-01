-- Set leader key and other core mappings
require("config.mappings")

-- Core: lazy.nvim loads all plugins from their respective files
require("core.lazy")

-- Require the options table early, but its contents will be applied later
local global_options_table = require("config.options")

-- Defer setting ALL global options until after a buffer is displayed in a window
-- This prevents conflicts with nomodifiable buffers created during startup
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
        -- Iterate through the loaded global options table and set them
        for option_name, option_value in pairs(global_options_table) do
            -- Special handling for runtimepath if it was included in the table
            if option_name == "runtimepath" then
                -- Handle runtimepath modification if needed, e.g.:
                -- vim.opt.runtimepath:remove(option_value)
            else
                vim.o[option_name] = option_value
            end
        end
    end,
    once = true, -- Ensure it runs only once
})
