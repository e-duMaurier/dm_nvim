-- Window-local options
vim.wo.number = true -- Enable line numbers

-- Return a table of global options to be set later
return {
    relativenumber = true,  -- Set relative line numbers (moved to global options table)
    clipboard = "unnamedplus", -- Sync clipboard between OS and Neovim
    wrap = false,           -- Don't automatically wrap long lines
    linebreak = true,       -- Don't split words when line wrapping
    breakindent = true,     -- Enable break indent
    autoindent = true,      -- Copy indent from current line when starting new one
    smartindent = true,     -- make indenting smarter again
    showtabline = 2,        -- Always show tabs (default: 1)
    numberwidth = 2,        -- set number column width to 2 {default 4}
    shiftwidth = 4,         -- the number of spaces inserted for each indentation
    tabstop = 4,            -- insert n spaces for a tab
    softtabstop = 4,        -- Number of spaces that a tab counts for while performing editing operations
    expandtab = true,       -- convert tabs to spaces
    ignorecase = true,      -- Case-insensitive searching, unless \C or capital is used in search
    smartcase = true,       -- smart case
    fileencoding = "utf-8", -- default file encoding
    conceallevel = 0,       -- so that `` is visible in markdown files
    undofile = true,        -- Save undo history
    backup = false,         -- creates a backup file
    writebackup = false,    -- disable editing file if a file is being edited, or was written to file while editing with another program
    showmode = false,       -- we don't need to see things like -- INSERT -- anymore
    -- runtimepath = vim.opt.runtimepath:remove '/usr/share/vim/vimfiles', -- This line is tricky to set this way; better to handle it directly if needed
}
