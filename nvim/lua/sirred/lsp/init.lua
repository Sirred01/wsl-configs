local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "sirred.lsp.mason"
require("sirred.lsp.handlers").setup()
require "sirred.lsp.none-ls"
