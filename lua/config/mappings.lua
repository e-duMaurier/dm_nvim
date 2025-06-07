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
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)
-- Save the current file without triggering auto-formatting.
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

----------------------------------------------------------------------------------------------------
--                                      BUFFER MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Navigate between buffers
-- Go to the next buffer in the buffer list.
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
-- Go to the previous buffer in the buffer list.
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Buffer Actions
-- Close the current buffer (similar to :bd or :bdelete).
vim.keymap.set("n", "<leader>x", ":Bdelete!<CR>", opts)
-- Create and open a new empty buffer.
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", opts)

----------------------------------------------------------------------------------------------------
--                                      WINDOW MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Create New Splits
-- Split the current window vertically (creates a new window to the right).
vim.keymap.set("n", "<leader>v", "<C-w>v", opts)
-- Split the current window horizontally (creates a new window below).
vim.keymap.set("n", "<leader>h", "<C-w>s", opts)

-- Window Sizing & Closing
-- Make all split windows in the current tab equal in height and width.
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)
-- Close the current window (split).
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts)

-- Navigate Between Existing Splits (using Ctrl-w + direction)
-- Move cursor to the window above.
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
-- Move cursor to the window below.
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
-- Move cursor to the window on the left.
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
-- Move cursor to the window on the right.
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

----------------------------------------------------------------------------------------------------
--                                      TAB MANAGEMENT
----------------------------------------------------------------------------------------------------

-- Tab Actions
-- Open a new empty tab.
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
-- Close the current tab.
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)

-- Navigate Between Tabs
-- Go to the next tab.
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts)
-- Go to the previous tab.
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts)

----------------------------------------------------------------------------------------------------
--                                      NAVIGATION & SCROLLING
----------------------------------------------------------------------------------------------------

-- Vertical Scrolling & Centering
-- Scroll down half a screen and center the cursor on the middle line.
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
-- Scroll up half a screen and center the cursor on the middle line.
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Search Navigation & Centering
-- Jump to the next search match and center it on the screen.
vim.keymap.set("n", "n", "nzzzv")
-- Jump to the previous search match and center it on the screen.
vim.keymap.set("n", "N", "Nzzzv")

----------------------------------------------------------------------------------------------------
--                                      DISPLAY & DIAGNOSTICS (LSP)
----------------------------------------------------------------------------------------------------

-- Toggle Line Wrapping
-- Toggle line wrapping on/off for the current buffer.
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Toggle All Diagnostics
-- Toggles all LSP diagnostics (errors, warnings, info) on or off for the current buffer.
vim.keymap.set("n", "<leader>do", function()
	diagnostics_active = not diagnostics_active
	if diagnostics_active then
		vim.diagnostic.enable(0)
	else
		vim.diagnostic.disable(0)
	end
end, opts)

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
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", opts)
-- Open NeoTree in a floating window to show Git status.
vim.keymap.set(
	"n",
	"<leader>ngs",
	":Neotree float git_status<CR>",
	{ silent = true, desc = "Neotree Open Git Status Window" }
)
