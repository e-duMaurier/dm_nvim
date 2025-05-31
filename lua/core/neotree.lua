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
      -- This is the correct place for window-specific settings like position and width
      window = {
        position = "left", -- Ensures Neotree always opens on the left
        width = 30,        -- Optional: Set a default width for the Neotree window
        mappings = {
          -- These mappings are for the Neotree window itself, not the filesystem entries
          -- You can add/remove mappings here if you want to control the Neotree window behavior
        },
      },
      filesystem = {
        -- Corrected syntax: 'enabled' should be 'true'
        follow_current_file = enable, -- Ensures the active file stays synced
        hijack_netrw_behavior = "open_default", -- Prevents default file handling conflicts
        window = {
          -- These mappings are for how files open from the Neotree filesystem
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
