local servers = {
	"lua_ls",
	-- "cssls",
	-- "html",
	-- "tsserver",
	"pyright",
	-- "bashls",
	"jsonls",
	-- "yamlls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
-- mason-lspconfig refreshes its online registry during setup. Keep that out
-- of startup; LSP configuration below works independently of Mason.

--[[local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end]]--

local opts = {}

for _, server in pairs(servers) do

    local current_opts = {
        on_attach = require("sirred.lsp.handlers").on_attach,
        capabilities = require("sirred.lsp.handlers").capabilities,
    }

    local server_name = vim.split(server, "@")[1]

    local require_ok, conf_opts = pcall(require, "sirred.lsp.settings." .. server_name)
    if require_ok then
        current_opts = vim.tbl_deep_extend("force", current_opts, conf_opts)
    end

    vim.lsp.config(server_name, current_opts)
    vim.lsp.enable(server_name)
end
