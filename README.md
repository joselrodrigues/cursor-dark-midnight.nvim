# Cursor Dark Midnight for Neovim

A faithful port of the Cursor Dark Midnight theme for Neovim, extracted directly from Cursor IDE's theme files.

## Features

- 🎨 Faithful reproduction of Cursor's Dark Midnight theme
- 🌲 Full TreeSitter support
- 📝 LSP semantic token support
- 🔍 Telescope integration
- 📁 Nvim-tree integration
- 🔧 Git signs support
- 💻 Terminal colors included

## Installation

### With [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "joselrodrigues/cursor-dark-midnight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd('colorscheme cursor-dark-midnight')
  end,
}
```

### LazyVim Configuration

Create `~/.config/nvim/lua/plugins/colorscheme.lua`:

```lua
return {
  {
    "joselrodrigues/cursor-dark-midnight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cursor-dark-midnight",
    },
  },
}
```

### With [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'joselrodrigues/cursor-dark-midnight.nvim',
  config = function()
    vim.cmd('colorscheme cursor-dark-midnight')
  end
}
```

### With [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'joselrodrigues/cursor-dark-midnight.nvim'
```

### Manual Installation

1. Copy the `colors/cursor-dark-midnight.lua` file to your Neovim colors directory:
   - Linux/macOS: `~/.config/nvim/colors/`
   - Windows: `%LOCALAPPDATA%\nvim\colors\`

2. Add to your `init.lua` or `init.vim`:
   ```lua
   vim.cmd('colorscheme cursor-dark-midnight')
   ```

## Color Palette

The theme uses the following color palette extracted from Cursor IDE:

| Color | Hex | Usage |
|-------|-----|-------|
| Background | `#1e2127` | Editor background |
| Background Alt | `#191c22` | Sidebar, menus |
| Foreground | `#7b88a1` | Main text |
| Foreground Alt | `#d8dee9` | Bright text |
| Selection | `#434c5e` | Visual selection |
| Red | `#bf616a` | Errors, delete |
| Green | `#a3be8c` | Strings, add |
| Yellow | `#ebcb8b` | Warnings, numbers |
| Blue | `#81a1c1` | Keywords, tags |
| Magenta | `#b48ead` | Constants |
| Cyan | `#88c0d0` | Functions, info |
| Orange | `#d08770` | Decorators |

## Supported Plugins

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## Requirements

- Neovim 0.8.0+
- True color terminal support
- `set termguicolors` in your config

## License

MIT License

## Contributing

Feel free to submit issues and enhancement requests!