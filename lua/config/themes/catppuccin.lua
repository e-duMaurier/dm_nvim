-- lua/config/themes/catppuccin.lua
-- File: catppuccin.lua
-- Description: Configuration for the Catppuccin color theme.
--              This file defines the Catppuccin plugin and its setup options.

return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Important: Themes usually need to load immediately
    priority = 1000, -- Ensures colorscheme loads before other UI plugins
    config = function()
        -- This function sets up the catppuccin plugin's options.
        require("catppuccin").setup({
            flavour = "mocha", -- Set Mocha style
            transparent_background = true,
            styles = {
                comments = {}, -- disable italics on comments
            },
            integrations = {
                neotree = true,
                telescope = {
                    enabled = true,
                },
                markdown = true,
                mason = true,
                cmp = true,
                treesitter = true,
                treesitter_context = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                        ok = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                        ok = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },
                gitsigns = {
                    enabled = true,
                    transparent = false, -- align with the transparent background by default
                },
                alpha = true,
                indent_blankline = {
                    enabled = true,
                    scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
                    colored_indent_levels = true,
                },
                aerial = true,
                dap = true,
                which_key = true,
            },
        })
        -- Apply the colorscheme directly within its own config, as the plugin author intends.
        -- This is often the most reliable place for the colorscheme to be set.
        vim.cmd.colorscheme("catppuccin")
    end,
}
