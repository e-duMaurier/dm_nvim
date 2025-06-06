-- lazy.nvim plugin manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require("core.neotree"),
    require("config.colortheme"),
    require("plugins.bufferline"),
    require("plugins.lualine"),
    require("plugins.treesitter"),
    require("plugins.telescope"), -- fuzzy finder
    require("plugins.lsp-config"), -- lsp
    require("plugins.cmp"),     -- autocompletion
    require("plugins.none-ls"), -- formatter/linter
    require("plugins.gitsigns"),
    require("plugins.alpha"),
    require("plugins.indent-blankline"),
    require("plugins.autopairs"),
    require("plugins.comment"),
    require("plugins.colorizer"),
    require("plugins.which-key"),
    require("plugins.fterm"), -- floating terminal
    require("plugins.dap"), -- debug adapter protocol
    require("plugins.aerial"),
})
