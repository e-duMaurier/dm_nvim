return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"  ,-.       _,---._ __  / \\  ",
			" /  )    .-'       `./ /   \\ ",
			"(  (   ,'            `/    /|",
			" \\  `-\"             \\'\\   / |",
			"  `.              ,  \\ \\ /  |",
			"   /`.          ,'-`----Y   |",
			"  (            ;        |   '",
			"  |  ,-.    ,-'         |  / ",
			"  |  | (   |            | /  ",
			"  )  |  \\  `.___________|/   ",
			"  `--'   `--'                ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			-- need to fix correct command for telescope search
			-- dashboard.button("f", "󰍉  Find file", ":lua require('telescope').files() <CR>"),
			dashboard.button("t", "  Browse pwd", ":Neotree toggle<CR>"),
			dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
			dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
			dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
			dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
			dashboard.button("p", "  Plugins", ":Lazy<CR>"),
			dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
		}

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}
