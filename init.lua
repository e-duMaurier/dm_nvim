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

-- Automatically open Neotree when Neovim starts
vim.cmd([[
  autocmd VimEnter * Neotree show left
]])

