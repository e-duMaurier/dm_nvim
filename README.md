# My Neovim Configuration

This repository contains my custom Neovim configuration, including settings, mappings, and plugins that shape my workflow.

## Features

- Customized key mappings for efficiency
- UI enhancements for better readability
- Plugin setup for extended functionality

## Plugins

This configuration utilizes the following plugins, organized in the respective folders:

- **Core Plugins (`lua/core/`)**
  - [Lazy.nvim](https://lazy.folke.io/) - A modern plugin manager for Neovim.
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - Neovim plugin to browse the file system and other tree like structures.
- **General Plugins (`lua/plugins/`)**
  - [Bufferline](https://github.com/akinsho/bufferline.nvim) - A snazzy buffer line (with tabpage integration) for Neovim built using lua.
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua.
  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - provide a simple and easy way to use the interface for tree-sitter in Neovim.
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists.
  - [LSP Config](https://github.com/neovim/nvim-lspconfig) - A "data only" repo, providing basic, default Nvim LSP client configurations for various LSP servers.
  - [CMP](https://github.com/hrsh7th/nvim-cmp) - A completion engine plugin for neovim.
  - [None-LS](https://github.com/nvimtools/none-ls.nvim) - Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
  - [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Deep buffer integration for Git.
  - [Alpha](https://github.com/goolord/alpha-nvim) - A fast and fully programmable greeter for Neovim.
  - [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Adds indentation guides to Neovim.
  - [Autopairs](https://github.com/windwp/nvim-autopairs) - A super powerful autopair plugin for Neovim that supports multiple characters.
  - [Comment](https://github.com/numToStr/Comment.nvim) - Smart and Powerful commenting plugin for Neovim.
  - [Colorizer](https://github.com/norcalli/nvim-colorizer.lua) - A high-performance color highlighter for Neovim which has no external dependencies.
  - [Which Key](https://github.com/folke/which-key.nvim) - Helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
  - [Fterm](https://github.com/numToStr/FTerm.nvim) - No-nonsense floating terminal plugin for Neovim.
  - [DAP](https://github.com/mfussenegger/nvim-dap) - Debug Adapter protocol client implementation for Neovim.
  - [Aerial](https://github.com/stevearc/aerial.nvim) - A code outline window for skimming and quick navigation.
- **Config Plugins (`lua/config/`)**
  - [Catppuccin Theme](https://github.com/catppuccin/nvim) - Catppuccin for Neovim.
  - `Options`- Config file to contain the custom settings for Neovim.
  - `Mappings`- Custom keybinds for Neovim and plugins.
  - `Autocmd`- File to hold various functions to handle additional customisation of Neovim.

## Installation

Clone this repository and place the configuration in your Neovim directory:

```sh
git clone https://github.com/e-duMaurier/dm_nvim.git ~/.config/nvim
```

## Directory Structure

The configuration is structured for clarity and modularity:

- **core/** contains foundational elements like the plugin manager (`Lazy.nvim`).
- **config/** holds key mappings, UI settings, and other general configurations.
- **plugins/** houses configuration files for non-essential or additional plugins.

## TODO

- Ensure all mappings, across all plugins, are in `mappings.lua`.
- Remove unwanted servers/languages from any LSP/Linter plugins.
- Reconfigure greeter menu in `alpha.lua` so everything works as intended.
- Double check `colorizer.lua` is working, and Hex/RGB values are coloured correctly.

## License

This configuration is licensed under the **MIT License**, which means you are free to:

- Use, modify, and distribute these files without restrictions.
- Incorporate them into your own projects, personal or commercial.

### Important Note:

⚠️ This license **only applies** to the files in this repository that I have personally created. Any plugins, themes, or external dependencies referenced in this configuration retain their own respective licenses. Please check their documentation for details.

By using this configuration, you agree to abide by the terms of the MIT License, ensuring freedom of use while respecting attribution when required.

## Contributions

Feel free to fork, modify, or submit pull requests to improve the configuration!
