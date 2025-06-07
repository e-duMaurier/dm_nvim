-- lua/core/lazy.lua
-- Configures Lazy.nvim and loads all plugins, including the active color theme.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Load the central colortheme configuration.
-- This file is expected to return the Lazy.nvim plugin specification for the active theme.
local theme_plugin_spec = require("config.colortheme")

-- Each required file should return a plugin specification table as expected by Lazy.nvim.
local plugins = {
    -- The selected color theme plugin is included here and stay near the top.
    theme_plugin_spec,

    -- Core plugins (e.g., neotree)
    require("core.neotree"), -- Returns the neo-tree plugin spec

    -- Other plugins
    require("plugins.bufferline"),
    require("plugins.lualine"),
    require("plugins.treesitter"),
    require("plugins.telescope"), -- fuzzy finder
    require("plugins.lsp-config"), -- lsp
    require("plugins.cmp"),     -- autocompletion
    require("plugins.none-ls"), -- formatter/linter
    require("plugins.gitsigns"),
    require("plugins.alpha"),
    require("plugins.indent-blankline"),
    require("plugins.autopairs"),
    require("plugins.comment"),
    require("plugins.colorizer"),
    require("plugins.which-key"),
    require("plugins.fterm"), -- floating terminal
    require("plugins.dap"), -- debug adapter protocol
    require("plugins.aerial"),
}

require("lazy").setup(plugins, {})
