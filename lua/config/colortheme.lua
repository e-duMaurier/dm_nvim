-- Load Catppuccin theme
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false, -- disable Lazy loading
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Set Mocha style
      transparent_background = true,
      styles = {
        comments = {} -- disable italics on comments
      },
      integrations = {
        gitsigns = true,
	neotree = true,
      }
    })

    -- Apply the colorscheme
    vim.cmd.colorscheme "catppuccin"
  end
}
