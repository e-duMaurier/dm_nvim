-- Core
require 'core.lazy'
require 'core.neotree'
-- Config
require 'config.colortheme'
require 'config.mappings'
require 'config.options'
-- Plugins
require 'plugins.bufferline'
require 'plugins.lualine'
require 'plugins.treesitter'

-- Automatically open Neotree when Neovim starts
vim.cmd([[
  autocmd VimEnter * Neotree show left
]])

-- Defer setting showmode until after initial plugin loading to prevents conflicts with nomodifiable buffers
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.o.showmode = false -- Set showmode after all plugins have loaded
  end,
  once = true, -- Ensure it runs only once
})
