-- Core
require 'core.lazy'
require 'core.neotree'
-- Config
require 'config.colortheme'
require 'config.mappings'
require 'config.options'
-- Plugins

-- Automatically open Neotree when Neovim starts
vim.cmd([[
  autocmd VimEnter * Neotree show left
]])

