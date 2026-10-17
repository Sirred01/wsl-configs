local M = {
}
function M.config()
  local treesitter = require "nvim-treesitter"

  -- nvim-treesitter no longer provides the old `configs` module.  Parsers
  -- are managed by the plugin, while highlighting and indentation are
  -- enabled through Neovim's native Tree-sitter API.
  treesitter.setup {
    install_dir = vim.fn.stdpath("data") .. "/site",
  }

  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "lua", "markdown", "bash", "python" },
    callback = function(args)
      vim.treesitter.start(args.buf)
      vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  })
end

return M
