return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
      filesystem = {
        follow_current_file =enabled, -- Ensures the active file stays synced
        hijack_netrw_behavior = "open_default", -- Prevents default file handling conflicts
        window = {
          mappings = {
            ["<CR>"] = "open_with_window_picker", -- Ensures the file opens in a buffer
            ["o"] = "open",
            ["s"] = "open_split", -- Open in a horizontal split
            ["v"] = "open_vsplit", -- Open in a vertical split
            ["t"] = "open_tabnew", -- Open in a new tab
          }
        }
      }
    }
  }
}
