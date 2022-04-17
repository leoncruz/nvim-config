local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_installer = require('lsp.installer')
local cmp = require('lsp.nvim_cmp')
local servers = require('lsp.servers')

local servers_options = {
	capabilities = capabilities,
}

cmp.setup()
lsp_installer.setup(servers, servers_options)
