-- aerial.lua
-- A code outline window for skimming and quick navigation

return {
    "stevearc/aerial.nvim",
    lazy_load = true,
    opts = {},
    -- Optional dependencies
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("aerial").setup({
            on_attach = function(bufnr)
                -- These mappings are local and MUST remain here
                vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
                vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
            end,
            layout = {
                min_width = 30,
            },
        })
    end,
}
