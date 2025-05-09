h# My Neovim Configuration

This repository contains my custom Neovim configuration, including settings, mappings, and plugins that shape my workflow.

## Features
- Customized key mappings for efficiency
- UI enhancements for better readability
- Plugin setup for extended functionality

## Plugins
This configuration utilizes the following plugins, organized in the respective folders:

- **Core Plugins (`lua/core/`)**  
  - [Lazy.nvim](https://lazy.folke.io/) - Plugin manager for Neovim.
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - File system tree browser plugin.
- **General Plugins (`lua/plugins/`)**  
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

## License
This configuration is licensed under the **MIT License**, which means you are free to:
- Use, modify, and distribute these files without restrictions.
- Incorporate them into your own projects, personal or commercial.

### Important Note:
⚠️ This license **only applies** to the files in this repository that I have personally created. Any plugins, themes, or external dependencies referenced in this configuration retain their own respective licenses. Please check their documentation for details.

By using this configuration, you agree to abide by the terms of the MIT License, ensuring freedom of use while respecting attribution when required.

## Contributions
Feel free to fork, modify, or submit pull requests to improve the configuration!
