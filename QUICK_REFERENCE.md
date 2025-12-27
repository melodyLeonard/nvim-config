# Neovim Quick Reference

## Launch Neovim

```bash
# Open Neovim with dashboard
nvim

# Open specific file
nvim filename.js

# Open directory
nvim /path/to/project
```

## Essential Keybindings

Leader key: `<Space>`

### File Navigation
| Key | Action |
|-----|--------|
| `<Space>e` | Toggle file explorer |
| `<Space>ff` | Find files |
| `<Space>fs` | Search in files (live grep) |
| `<Space>fr` | Recent files |
| `<Space>fb` | Find buffers |

### Editing
| Key | Action |
|-----|--------|
| `<C-s>` | Save file |
| `gcc` | Comment line |
| `gc` | Comment (visual mode) |
| `K` | Show documentation |

### LSP
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Show references |
| `<Space>ca` | Code actions |
| `<Space>rn` | Rename |
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |

### Git
| Key | Action |
|-----|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<Space>hp` | Preview hunk |
| `<Space>hs` | Stage hunk |

### Terminal
| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal |

## Commands

```vim
:Mason           " Manage LSP servers
:Lazy            " Manage plugins
:checkhealth     " Check setup
:help            " Get help
```

## Tips

1. Press `<Space>` and wait - Which-key shows available commands
2. First file open may take longer (LSP server installation)
3. Update plugins: `:Lazy sync`
4. Customize: `nvim ~/.config/nvim/init.lua`
