# Neovim Configuration

This is a modular Lua-based Neovim configuration organized under `lua/sirred/`.
The entry point is [`init.lua`](init.lua), which loads editor options, keymaps,
Packer, completion, LSP, Telescope, Treesitter, UI plugins, the file tree,
buffer management, and terminal integration.

## Structure

- `init.lua` — startup sequence and Python/Molten settings.
- `lua/sirred/options.lua` — editor options, wrapping, indentation, undo, search,
  clipboard detection, and display settings.
- `lua/sirred/keymaps.lua` — global mappings.
- `lua/sirred/plugins.lua` — Packer bootstrap and plugin declarations.
- `lua/sirred/lsp/` — Mason, language-server setup, handlers, and formatter/
  diagnostic integration.
- `lua/sirred/lsp/settings/` — server-specific settings for Lua, Python, and JSON.
- `lua/sirred/cmp.lua` — nvim-cmp and LuaSnip completion.
- `lua/sirred/telescope.lua` — Telescope defaults and picker mappings.
- `lua/sirred/treesitter.lua` — Treesitter setup, highlighting, indentation,
  autopairs, and comment-string support.
- `lua/sirred/nvim-tree.lua` — file explorer configuration.
- `lua/sirred/bufferline.lua` — buffer tabline configuration.
- `lua/sirred/toggleterm.lua` — floating and named terminal integration.
- `lua/sirred/gitsigns.lua` — Git signs and hunk actions.
- `lua/sirred/lualine.lua` — statusline configuration.
- `lua/sirred/project.lua` — project-root detection and Telescope project picker.
- `lua/sirred/alpha.lua` — startup dashboard.
- `lua/sirred/whichkey.lua` — `<leader>` menu and discoverability labels.
- `lua/sirred/autocommands.lua` — yank highlighting, filetype behavior, resizing,
  and dashboard tabline behavior.
- `plugin/packer_compiled.lua` — generated Packer loader; do not edit manually.

## Plugin and language support

Packer manages completion, snippets, LSP configuration, Mason, Treesitter,
Telescope, NvimTree, Bufferline, ToggleTerm, GitSigns, project navigation, and
the UI components. Mason is available for installing language servers manually;
startup does not refresh the Mason registry or install servers automatically.

Formatting is provided through none-ls using Prettier, Black, and StyLua. LSP
formatting is available through `<leader>lf` or `<leader>l f` depending on the
mapping context described in [KEYBINDINGS.md](KEYBINDINGS.md).

Treesitter highlighting and indentation are configured for Lua, Markdown, Bash,
and Python. Install or update parsers with `:TSInstall <language>` or
`:TSUpdate` when needed. Markdown inline parsing is provided through Markdown's
parser queries.
The active Python host is taken from `$VIRTUAL_ENV/bin/python` when that path
exists; otherwise Neovim uses its normal Python discovery.

## Startup behavior

The configuration uses the XDG paths from the shell environment, so Neovim's
configuration, data, and cache directories follow `XDG_CONFIG_HOME`,
`XDG_DATA_HOME`, and `XDG_CACHE_HOME`. Packer bootstraps itself if missing and
syncs plugins after first installation.

## Maintenance

After changing `lua/sirred/plugins.lua`, save the file and allow Packer to run
`PackerSync`. The generated `plugin/packer_compiled.lua` may then change.

Useful checks:

```vim
:checkhealth
:checkhealth vim.lsp
:PackerStatus
:Mason
:TSUpdate
```

The complete mapping reference is kept separately in
[KEYBINDINGS.md](KEYBINDINGS.md).

