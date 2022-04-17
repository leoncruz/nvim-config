local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_installer = require('lsp2.installer')
local cmp = require('lsp2.nvim_cmp')
local servers = require('lsp2.servers')

local servers_options = {
	capabilities = capabilities,
}

cmp.setup()
lsp_installer.setup(servers, servers_options)
