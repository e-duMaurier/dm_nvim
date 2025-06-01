h# My Neovim Configuration

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
  - [Window-Picker](https://github.com/s1n7ax/nvim-window-picker) - Neovim plugin that allows users to easily pick a window using a selector.
- **General Plugins (`lua/plugins/`)**
  - [Bufferline](https://github.com/akinsho/bufferline.nvim) - A snazzy buffer line (with tabpage integration) for Neovim built using lua.
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua.
  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - provide a simple and easy way to use the interface for tree-sitter in Neovim.
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists.
  - [LSP Config](https://github.com/neovim/nvim-lspconfig) - nvim-lspconfig is a "data only" repo, providing basic, default Nvim LSP client configurations for various LSP servers.
  - [CMP](https://github.com/hrsh7th/nvim-cmp) - A completion engine plugin for neovim.
  - [None-LS](https://github.com/nvimtools/none-ls.nvim) - Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
  - [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Deep buffer integration for Git.
- **Config Plugins (`lua/config/`)**
  - [Catppuccin Theme](https://github.com/catppuccin/nvim) - Catppuccin for Neovim.

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

The configuration is structured for clarity and modularity:

- **core/** contains foundational elements like the plugin manager (`Lazy.nvim`).
- **config/** holds key mappings, UI settings, and other general configurations.
- **plugins/** houses configuration files for non-essential or additional plugins.

## License

This configuration is licensed under the **MIT License**, which means you are free to:

- Use, modify, and distribute these files without restrictions.
- Incorporate them into your own projects, personal or commercial.

### Important Note:

⚠️ This license **only applies** to the files in this repository that I have personally created. Any plugins, themes, or external dependencies referenced in this configuration retain their own respective licenses. Please check their documentation for details.

By using this configuration, you agree to abide by the terms of the MIT License, ensuring freedom of use while respecting attribution when required.

## Contributions

Feel free to fork, modify, or submit pull requests to improve the configuration!
