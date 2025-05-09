-- Load Catppuccin theme with proper configuration
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Set Mocha style
      transparent_background = true,
      integrations = {
      neotree = true,
      }
    })

    -- Apply the colorscheme
    vim.cmd.colorscheme "catppuccin"
  end
}
