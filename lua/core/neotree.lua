-- Neotree explorer panel

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",        -- Optional image support in preview window
        "s1n7ax/nvim-window-picker",
    },
    lazy = false, -- neo-tree will load itself immediately
    opts = {
        window = {
            position = "left", -- Ensures Neotree always opens on the left
            width = 30, -- Optional: Set a default width for the Neotree window
            mappings = {},
        },
        filesystem = {
            follow_current_file = enable,
            hijack_netrw_behavior = "open_default", -- Prevents default file handling conflicts
            window = {
                mappings = {
                    -- This mapping uses nvim-window-picker's functionality
                    ["<CR>"] = "open_with_window_picker",
                    ["o"] = "open",
                    ["s"] = "open_split", -- Open in a horizontal split
                    ["v"] = "open_vsplit", -- Open in a vertical split
                    ["t"] = "open_tabnew", -- Open in a new tab
                },
            },
        },
    },
}
