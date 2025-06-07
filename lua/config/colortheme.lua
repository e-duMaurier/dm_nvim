-- lua/config/colortheme.lua
-- Responsible for selecting and dynamically loading the active color theme from the 'config/themes/' directory.
-- It returns the Lazy.nvim plugin specification for the chosen theme.

-- Set the name of the active theme here.
-- Change this value to easily switch between themes defined in sub-files.
local active_theme_name = "catppuccin" -- Example: "catppuccin", "onedark", etc.

-- Define the base module path for themes.
-- This assumes themes are located under ~/.config/nvim/lua/config/themes/
local theme_base_module = "config.themes."

-- Construct the full Lua module path for the active theme
local theme_module_path = theme_base_module .. active_theme_name

-- Attempt to load the theme's plugin specification.
-- pcall ensures that errors during require (e.g., file not found, syntax error) are caught.
local status, theme_plugin_spec = pcall(require, theme_module_path)

if status and type(theme_plugin_spec) == "table" then
    return theme_plugin_spec
else
    -- Handle cases where the theme module could not be found or had an error during require.
    vim.notify(
        "Error: Could not load color theme '"
        .. active_theme_name
        .. "' from module '"
        .. theme_module_path
        .. "'. "
        .. (tostring(theme_plugin_spec) or "No error message."),
        vim.log.levels.ERROR
    )
    -- Fallback to Neovim's default colorscheme if the specified theme can't be loaded.
    vim.cmd.colorscheme("default")
    -- Return an empty table so Lazy.nvim doesn't try to load a non-existent plugin or error out further.
    return {}
end
