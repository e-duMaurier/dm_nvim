-- Alpha greeter plugin

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
			"  |  | (   |   dm_nvim  | /  ",
			"  )  |  \\  `.___________|/   ",
			"  `--'   `--'                ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰍉  Find file", ":Telescope find_files<CR>"),
			dashboard.button("t", "  Browse pwd", ":Neotree toggle<CR>"),
			--dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
			dashboard.button("s", "󰯂  Browse scripts", ":e ~/.config/nvim/lua/plugins/<CR>"),
			dashboard.button("o", "  Options", ":e ~/.config/nvim/lua/config/options.lua<CR>"),
			dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
			dashboard.button("p", "  Plugins", ":Lazy<CR>"),
			dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
		}

		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}
