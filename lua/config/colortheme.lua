-- Load Catppuccin theme
return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false, -- disable Lazy loading
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Set Mocha style
			transparent_background = true,
			styles = {
				comments = {}, -- disable italics on comments
			},
			integrations = {
				neotree = true,
				telescope = {
					enabled = true,
				},
				markdown = true,
				mason = true,
				cmp = true,
				treesitter = true,
				treesitter_context = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
						ok = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
						ok = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				gitsigns = {
					enabled = true,
					transparent = false, -- align with the transparent background by default
				},
			},
		})

		-- Apply the colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
