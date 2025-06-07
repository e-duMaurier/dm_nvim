-- lua/config/options.lua
-- This file contains global and window-local Neovim options, controlling various aspects of Neovim's behavior and appearance.

----------------------------------------------------------------------------------------------------
--                                      WINDOW-LOCAL OPTIONS
-- These options affect individual windows and they apply only to the specific window where they are active.
----------------------------------------------------------------------------------------------------
vim.wo.number = true -- Enable line numbers

----------------------------------------------------------------------------------------------------
--                                      GLOBAL OPTIONS
-- These options affect Neovim globally and are returned in a table.
----------------------------------------------------------------------------------------------------

return {
	----------------------------------
	-- Display & Appearance
	----------------------------------
	relativenumber = true, -- Set relative line numbers (moved to global options table).
	showtabline = 2, -- Always show the tab line.
	numberwidth = 2, -- Minimum number of columns used for the line number.
	conceallevel = 0, -- Disable conceal level to show things like `` in Markdown.
	showmode = false, -- Disable showing the mode, lualine will set this.
	termguicolors = true, -- Enable 24-bit RGB (True Colour) support in the terminal.

	----------------------------------
	-- Text Wrapping & Line Behavior
	----------------------------------
	wrap = false, -- Disable automatic line wrapping.
	linebreak = true, -- Break lines at word boundaries if 'wrap' is true.
	breakindent = true, -- Indent wrapped lines to match indentation of previous line.

	----------------------------------
	-- Indentation
	----------------------------------
	autoindent = true, -- Copy indent from current line when starting a new line.
	smartindent = true, -- Smarter automatic indentation for C-like languages.
	shiftwidth = 4, -- The number if spaces inserted for each indentation level.
	tabstop = 4, -- The number of spaces that a <Tab> character uses.
	softtabstop = 4, -- The number of spaces that a <Tab> counts for while editing.
	expandtab = true, -- Convert tabs to spaces when typing <Tab>.

	----------------------------------
	-- Search Settings
	----------------------------------
	ignorecase = true, -- Ignore case in search patterns.
	smartcase = true, -- Override 'ignorecase' if the search pattern uses uppercase characters.

	----------------------------------
	-- File & Clipboard Management
	----------------------------------
	clipboard = "unnamedplus", -- Sync clipboard between OS and Neovim.
	fileencoding = "utf-8", -- default file encoding.
	undofile = true, -- Save undo history.
	backup = false, -- Disables creating backup files.
	writebackup = false, -- disable editing file if a file is being edited, or was written to file while editing with another program.
}
