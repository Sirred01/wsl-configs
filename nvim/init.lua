-- silly patches
vim.opt.runtimepath:append(vim.fn.expand("~/.luarocks/share/lua/5.1"))
package.path = package.path .. ";" .. vim.fn.expand("~/.luarocks/share/lua/5.1/?.lua")
package.cpath = package.cpath .. ";" .. vim.fn.expand("~/.luarocks/lib/lua/5.1/?.so")

-- vim.opt.maxmem = 10000
-- vim.opt.maxmemtot = 50000

vim.o.maxmempattern = 100000

require "sirred.options"
require "sirred.keymaps"
require "sirred.plugins"
require "sirred.colorscheme"
require "sirred.cmp"
require "sirred.lsp"
require "sirred.telescope"
require "sirred.gitsigns"
require("sirred.treesitter").config()
require "sirred.autopairs"
require "sirred.comment"
require "sirred.nvim-tree"
require "sirred.bufferline"
require "sirred.lualine"
require "sirred.toggleterm"
require "sirred.project"
require "sirred.indentline"
require "sirred.alpha"
require "sirred.whichkey"
require "sirred.autocommands"


-- Prefer the active virtual environment for Python integration when one exists.
-- Otherwise let Neovim discover the configured system Python.
local virtualenv = vim.env.VIRTUAL_ENV
if virtualenv then
  local python = virtualenv .. "/bin/python"
  if vim.fn.executable(python) == 1 then
    vim.g.python3_host_prog = python
  end
end

vim.g.molten_image_provider = "image.nvim"
vim.g.molten_auto_open_output = true
vim.g.molten_wrap_output = true
