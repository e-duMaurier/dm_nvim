vim.wo.number = true -- Enable line numbers
vim.o.relativenumber = true -- Set relative line numbers
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim
vim.o.wrap = false -- Don't automatically wrap long lines
vim.o.linebreak = true -- Don't split words when line wrapping
vim.o.breakindent = true -- Enable break indent
vim.o.autoindent = true -- Copy indent from current line when starting new one
vim.o.smartindent = true -- make indenting smarter again
vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.o.numberwidth = 4 -- set number column width to 2 {default 4}
vim.o.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.o.tabstop = 4 -- insert n spaces for a tab
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
vim.o.expandtab = true -- convert tabs to spaces
vim.o.ignorecase = true -- Case-insensitive searching, unless \C or capital is used in search
vim.o.smartcase = true -- smart case
vim.o.fileencoding = 'utf-8' -- default file encoding
vim.o.conceallevel = 0 -- so that `` is visible in markdown files
vim.o.undofile = true -- Save undo history
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false -- disable editing file if a file is being edited, or was written to file while editing with another program 
-- Disabled showmode here to prevent issues with installing/setting up Treesitter
--vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separate vim plugins from neovim in case vim still in use
