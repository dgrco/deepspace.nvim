# deepspace.nvim

A Neovim colorscheme for deep focus.

Near black background, bright white foreground text, semantic highlighting,
and minimal stylistic noise (no bold, no italics).

<img width="1593" height="1051" alt="image" src="https://github.com/user-attachments/assets/4357f4b5-0e01-466e-a8d0-379a703b4b24" />


## Installation

### lazy.nvim
```lua
{
  "dgrco/deepspace.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("deepspace")
  end,
}
```

## Supported plugins & features

Deepspace provides explicit highlight support for:

- **Neovim core**
  - UI elements (line numbers, splits, floating windows)
  - Search, visual selection, matchparen
  - Syntax highlighting (legacy + Tree-sitter)

- **Tree-sitter**
  - Variables, functions, types, constants, operators

- **LSP / Diagnostics**
  - Errors, warnings, and hints via built-in diagnostic groups

- **Completion**
  - `nvim-cmp` (completion menu and documentation windows)

- **Keybinding helpers**
  - `which-key.nvim`

- **Version control**
  - `gitsigns.nvim`
 
- **Status Lines**
  - `mini.statusline`

- **Extras**
  - Matching Alacritty theme
  - Matching Foot theme

### Tested with

- Neovim ≥ 0.11
- `nvim-treesitter`
- `nvim-cmp`
- `which-key.nvim`
- `gitsigns.nvim`

## Acknowledgements  
- Wallpaper [https://www.reddit.com/r/wallpaper/comments/qlr375/3840x2160_astronaut/]
