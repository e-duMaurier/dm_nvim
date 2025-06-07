-- Neotree explorer panel

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window
	},
	lazy = false, -- neo-tree will load itself immediately
	opts = {
		window = {
			position = "left", -- Ensures Neotree always opens on the left
			width = 30, -- Optional: Set a default width for the Neotree window
			mappings = {},
		},
		filesystem = {
			follow_current_file = {
				enabled = true,
			},
			hijack_netrw_behavior = "open_default", -- Prevents default file handling conflicts
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = true,
			},
			window = {
				mappings = {
					-- This mapping uses nvim-window-picker's functionality
					["<CR>"] = "open",
					["o"] = "open",
					["s"] = "open_split", -- Open in a horizontal split
					["v"] = "open_vsplit", -- Open in a vertical split
					["t"] = "open_tabnew", -- Open in a new tab
				},
			},
		},
	},
}
