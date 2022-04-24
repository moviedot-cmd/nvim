local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Servers that I work
local servers_to_install = {
	"bashls",
	"clangd",
	"gopls",
	"groovyls",
	"html",
	"jdtls",
	"jsonls",
	"lemminx",
	"rust_analyzer",
	"solargraph",
	"sumneko_lua",
	"taplo",
	"tsserver",
	"vimls",
}

for i = 1, 14 do
	local server_to_install = servers_to_install[i]
	local ok, server = lsp_installer.get_server(server_to_install)

	-- Install server if is not installed
	if ok and server:is_installed() == false then
		print("Instaled "..server_to_install)
		server:install()
	end
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server.name == "jsonls" then
		local jsonls_opts = require("user.lsp.settings.jsonls")
		opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	end

	if server.name == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
