----------------------------------------------------------------------------------------------------
--                                      GLOBAL SETTINGS & VARIABLES
----------------------------------------------------------------------------------------------------

-- Set leader key (for Normal and Visual modes)
-- The leader key is used as a prefix for custom keybindings.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap <Space> to <Nop> to allow it to be used as the leader key.
-- Without this, pressing space might insert a space character.
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Global options for keymap.set (no remap and silent execution)
local opts = { noremap = true, silent = true }

-- Function to create keymaos with a description, while keeping 'opts' are applied
-- 'modes' can be a string, or table ("n", or {"n","v"}).
local function map_with_desc(modes, map, cmd, description)
    vim.keymap.set(modes, map, cmd, vim.tbl_extend("force", opts, { desc = description }))
end

-- Variable to track diagnostics state (used for toggling)
local diagnostics_active = true

----------------------------------------------------------------------------------------------------
--                                      CORE EDITING & FILE OPERATIONS
----------------------------------------------------------------------------------------------------

-- Basic Editing Actions
-- Delete single character without copying it to the clipboard.
vim.keymap.set("n", "x", '"_x', opts)
-- Paste without overwriting the last yanked content.
vim.keymap.set("v", "p", '"_dP', opts)

-- File Saving
-- Save the current file.
map_with_desc("n", "<C-s>", "<cmd> w <CR>", "Save File")
-- Save the current file without triggering auto-formatting.
map_with_desc("n", "<leader>sn", "<cmd>noautocmd w <CR>", "Save (No Autoformat)")

----------------------------------------------------------------------------------------------------
--                                      BUFFER MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Which-key group for Buffer commands
-- Press <leader>b to see buffer related options.
map_with_desc("n", "<leader>b", "<Nop>", "Buffers")

-- Navigate between buffers
-- Go to the next buffer in the buffer list.
map_with_desc("n", "<Tab>", ":bnext<CR>", "Next Buffer")
-- Go to the previous buffer in the buffer list.
map_with_desc("n", "<S-Tab>", ":bprevious<CR>", "Previous Buffer")

-- Buffer Actions
-- Close the current buffer (similar to :bd or :bdelete).
map_with_desc("n", "<leader>x", ":Bdelete!<CR>", "Close Buffer")
-- Create and open a new empty buffer.
map_with_desc("n", "<leader>b", "<cmd>enew<CR>", "New Buffer")

----------------------------------------------------------------------------------------------------
--                                      WINDOW MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Create New Splits
-- Split the current window vertically (creates a new window to the right).
map_with_desc("n", "<leader>v", "<C-w>v", "Split Vertical")
-- Split the current window horizontally (creates a new window below).
map_with_desc("n", "<leader>h", "<C-w>s", "Split Horizontal")

-- Window Sizing & Closing
-- Make all split windows in the current tab equal in height and width.
map_with_desc("n", "<leader>se", "<C-w>=", "Equalise Splits")
-- Close the current window (split).
map_with_desc("n", "<leader>xs", ":close<CR>", "Close Current Window")

-- Navigate Between Existing Splits (using Ctrl-w + direction)
-- Move cursor to the window above.
map_with_desc("n", "<C-k>", ":wincmd k<CR>", "Move to Window Up")
-- Move cursor to the window below.
map_with_desc("n", "<C-j>", ":wincmd j<CR>", "Move to Window Down")
-- Move cursor to the window on the left.
map_with_desc("n", "<C-h>", ":wincmd h<CR>", "Move to Window Left")
-- Move cursor to the window on the right.
map_with_desc("n", "<C-l>", ":wincmd l<CR>", "Move to Window Right")

----------------------------------------------------------------------------------------------------
--                                      TAB MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Whick-Key group for Tab commands
-- Press <leader>t to see tab-related options.
map_with_desc("n", "<leader>t", "<Nop>", "Tabs")

-- Tab Actions
-- Open a new empty tab.
map_with_desc("n", "<leader>to", ":tabnew<CR>", "Open New Tab")
-- Close the current tab.
map_with_desc("n", "<leader>tx", ":tabclose<CR>", "Close Current Tab")

-- Navigate Between Tabs
-- Go to the next tab.
map_with_desc("n", "<leader>tn", ":tabn<CR>", "Next Tab")
-- Go to the previous tab.
map_with_desc("n", "<leader>tp", ":tabp<CR>", "Previous Tab")

----------------------------------------------------------------------------------------------------
--                                      NAVIGATION & SCROLLING
----------------------------------------------------------------------------------------------------

-- Vertical Scrolling & Centering
-- Scroll down half a screen and center the cursor on the middle line.
map_with_desc("n", "<C-d>", "<C-d>zz", "Scroll Down & Centre")
-- Scroll up half a screen and center the cursor on the middle line.
map_with_desc("n", "<C-u>", "<C-u>zz", "Scroll Up & Centre")

-- Search Navigation & Centering
-- Jump to the next search match and center it on the screen.
map_with_desc("n", "n", "nzzzv", "Next Search & Centre")
-- Jump to the previous search match and center it on the screen.
map_with_desc("n", "N", "Nzzzv", "Previous Search & Centre")

----------------------------------------------------------------------------------------------------
--                                      DISPLAY & DIAGNOSTICS
----------------------------------------------------------------------------------------------------

-- Toggle Line Wrapping
-- Toggle line wrapping on/off for the current buffer.
map_with_desc("n", "<leader>lw", "<cmd>set wrap!<CR>", "Toggle Line Wrap")

-- Which-key group for Diagnostics
-- Press <leader>d for diagnostic-related options.
map_with_desc("n", "<leader>d", "<Nop>", "Diagnostics")

-- Toggle All Diagnostics
-- Toggles all LSP diagnostics (errors, warnings, info) on or off for the current buffer.
map_with_desc("n", "<leader>do", function()
    diagnostics_active = not diagnostics_active
    if diagnostics_active then
        vim.diagnostic.enable(0)
    else
        vim.diagnostic.disable(0)
    end
end, "Toggle Diagnostics")

-- Diagnostic Navigation
-- Go to the previous diagnostic message in the current file.
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
-- Go to the next diagnostic message in the current file.
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
-- Open a floating window with the diagnostic message under the cursor.
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
-- Populate the quickfix list with all diagnostic messages in the current file.
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

----------------------------------------------------------------------------------------------------
--                                      PLUGIN SPECIFIC MAPPINGS
----------------------------------------------------------------------------------------------------

-- NeoTree
-- Toggle the visibility of the NeoTree file explorer sidebar.
map_with_desc("n", "<leader>e", ":Neotree toggle<CR>", "Toggle Neotree")
-- Open NeoTree in a floating window to show Git status.
vim.keymap.set(
    "n",
    "<leader>ngs",
    ":Neotree float git_status<CR>",
    { silent = true, desc = "Neotree Open Git Status Window" }
)

-- Fterm (Floating Terminal)
-- Toggle the floating terminal
map_with_desc({ "n", "t" }, "<leader>tt", function()
    require("FTerm").toggle()
end, "Toggle Floating Terminal")

-- Aerial (Code Outline and Synbols)
-- Toggle the Aerial code outline window
map_with_desc("n", "<leader>oo", ":AerialToggle!<CR>", "Toggle Outline Window")
-- Toggle the Aerial symbol Navigation
map_with_desc("n", "<leader>on", ":AerialNavToggle<CR>", "Toggle Outline Navigation")
