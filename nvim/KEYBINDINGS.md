# Keybindings

The leader key is `<Space>`. The local leader is also `<Space>`. `<C-x>`,
`<A-x>`, and `<S-x>` mean Ctrl, Alt, and Shift respectively. Mappings are
listed by mode: Normal, Insert, Visual, Visual Block, Terminal, Telescope,
NvimTree, and LSP-attached buffers.

## Global mappings

### Normal mode

| Key | Action |
|---|---|
| `<leader>e` | Toggle NvimTree |
| `<leader>f` | Find files with Telescope, dropdown layout without previewer |
| `<C-t>` | Search text with Telescope live grep |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move to the left/down/up/right window |
| `<C-Up>` / `<C-Down>` | Increase/decrease window height |
| `<C-Left>` / `<C-Right>` | Decrease/increase window width |
| `<S-h>` / `<S-l>` | Previous/next buffer |
| `<A-j>` / `<A-k>` | Move the current line down/up |

### Insert mode

| Key | Action |
|---|---|
| `jk` / `kj` | Leave Insert mode |

### Visual mode

| Key | Action |
|---|---|
| `<` / `>` | Indent left/right and keep the selection active |
| `<A-j>` / `<A-k>` | Move the selected text down/up |
| `p` | Paste over the selection without replacing the yank register |

### Visual Block mode

| Key | Action |
|---|---|
| `J` / `K` | Move the block down/up |
| `<A-j>` / `<A-k>` | Move the block down/up |

### Terminal mode

| Key | Action |
|---|---|
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Leave terminal input mode and move to the neighboring window |

## Which-Key leader menu

Which-Key displays the following Normal-mode mappings under `<leader>`:

| Key | Action |
|---|---|
| `<leader>a` | Open Alpha dashboard |
| `<leader>b` | List buffers in Telescope |
| `<leader>c` | Delete the current buffer |
| `<leader>e` | Toggle NvimTree |
| `<leader>f` | Find files |
| `<leader>F` | Search text with live grep using Ivy theme |
| `<leader>h` | Clear search highlighting |
| `<leader>p c` | Packer compile |
| `<leader>p i` | Packer install |
| `<leader>p s` | Packer sync |
| `<leader>p S` | Packer status |
| `<leader>p u` | Packer update |
| `<leader>P` | Find projects |
| `<leader>q` | Quit without saving |
| `<leader>w` | Save the current file |

### Git: `<leader>g`

| Key | Action |
|---|---|
| `<leader>g g` | Toggle Lazygit |
| `<leader>g j` / `<leader>g k` | Next/previous Git hunk |
| `<leader>g l` | Blame the current line |
| `<leader>g p` | Preview the current hunk |
| `<leader>g r` | Reset the current hunk |
| `<leader>g R` | Reset the current buffer |
| `<leader>g s` | Stage the current hunk |
| `<leader>g u` | Undo staging the current hunk |
| `<leader>g o` | Show changed files in Telescope |
| `<leader>g b` | Choose a Git branch |
| `<leader>g c` | Choose a Git commit |
| `<leader>g d` | Diff the current file against `HEAD` |

### LSP: `<leader>l`

These mappings are also installed buffer-locally when an LSP client attaches.

| Key | Action |
|---|---|
| `<leader>l a` | Code action |
| `<leader>l d` | Document diagnostics |
| `<leader>l w` | Workspace diagnostics |
| `<leader>l f` | Format the current buffer |
| `<leader>l i` | Open LSP information |
| `<leader>l I` | Open LSP installer information |
| `<leader>l j` / `<leader>l k` | Next/previous diagnostic |
| `<leader>l l` | Run CodeLens |
| `<leader>l q` | Send diagnostics to the location list |
| `<leader>l r` | Rename the symbol under the cursor |
| `<leader>l s` | Show document symbols |
| `<leader>l S` | Show workspace symbols |

### Search: `<leader>s`

| Key | Action |
|---|---|
| `<leader>s b` | Choose a Git branch |
| `<leader>s c` | Choose a colorscheme |
| `<leader>s h` | Search help tags |
| `<leader>s M` | Search man pages |
| `<leader>s r` | Open a recent file |
| `<leader>s R` | Search registers |
| `<leader>s k` | Search keymaps |
| `<leader>s C` | Search commands |

### Terminal: `<leader>t`

| Key | Action |
|---|---|
| `<leader>t n` | Toggle a Node terminal |
| `<leader>t u` | Toggle an NCDU terminal |
| `<leader>t t` | Toggle an Htop terminal |
| `<leader>t p` | Toggle a Python terminal |
| `<leader>t f` | Open a floating terminal |
| `<leader>t h` | Open a horizontal terminal |
| `<leader>t v` | Open a vertical terminal |

## ToggleTerm mappings

| Mode/key | Action |
|---|---|
| Normal `<C-\\>` | Toggle the default ToggleTerm terminal |
| Terminal `<Esc>` / `jk` | Leave terminal input mode |
| Terminal `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Navigate to a neighboring window |

## Telescope mappings

### Insert mode inside Telescope

| Key | Action |
|---|---|
| `<C-n>` / `<C-p>` | Next/previous prompt history item |
| `<C-j>` / `<C-k>` | Next/previous result |
| `<C-c>` | Close Telescope |
| `<Down>` / `<Up>` | Next/previous result |
| `<CR>` | Select the current result |
| `<C-x>` / `<C-v>` / `<C-t>` | Open horizontally / vertically / in a new tab |
| `<C-u>` / `<C-d>` | Scroll preview up/down |
| `<PageUp>` / `<PageDown>` | Scroll results up/down |
| `<Tab>` / `<S-Tab>` | Toggle selection and move forward/backward |
| `<C-q>` | Send all results to the quickfix list |
| `<A-q>` | Send selected results to the quickfix list |
| `<C-l>` | Complete a tag |
| `<C-_>` | Show Telescope's key help |

### Normal mode inside Telescope

The same selection/opening/scrolling mappings are available, plus `j`/`k`,
`gg`/`G`, `H`/`M`/`L`, and `<Up>`/`<Down>` for navigation. `<Esc>` closes the
picker and `?` opens Telescope's key help.

## NvimTree mappings

NvimTree also loads its plugin defaults. The custom mappings are:

| Key | Action |
|---|---|
| `l` / `<CR>` / `o` | Open the node |
| `h` | Close the parent directory |
| `v` | Open the node in a vertical split |

## Conditional LSP mappings

When a language server attaches, the following buffer-local mappings are added:

| Key | Action |
|---|---|
| `gD` | Go to declaration |
| `gd` | Go to definition |
| `K` | Show hover documentation |
| `gI` | Go to implementation |
| `gr` | List references |
| `gl` | Show diagnostics in a floating window |
| `<leader>lf` | Format the buffer |
| `<leader>li` / `<leader>lI` | LSP info / installer info |
| `<leader>la` | Code action |
| `<leader>lj` / `<leader>lk` | Next/previous diagnostic |
| `<leader>lr` | Rename symbol |
| `<leader>ls` | Signature help |
| `<leader>lq` | Populate the location list with diagnostics |

