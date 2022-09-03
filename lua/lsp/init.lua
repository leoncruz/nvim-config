local cmp_capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_config = require('lspconfig')

local cmp = require('lsp.nvim_cmp')

vim.diagnostic.config({
	virtual_text = false
})

cmp.setup()

lsp_config.solargraph.setup {
	diagnostic = true,
	capabilities = cmp_capabilities
}

lsp_config.jedi_language_server.setup {
	capabilities = cmp_capabilities
}

lsp_config.sumneko_lua.setup {
	capabilities = cmp_capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false
			}
		}
	}
}

lsp_config.cssls.setup {
	capabilities = cmp_capabilities
}

lsp_config.elixirls.setup {
	capabilities = cmp_capabilities,
	cmd = { 'language_server.sh' }
}

lsp_config.tsserver.setup {
	capabilities = cmp_capabilities
}

lsp_config.eslint.setup {}
