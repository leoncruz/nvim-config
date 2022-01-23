local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable,
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'ultisnips' },
	}, {
		{
			name = 'buffer',
			get_bufnrs = function()
				local bufs = {}
				for _, win in ipairs(vim.api.nvim_list_wins()) do
					bufs[vim.api.nvim_win_get_buf(win)] = true
				end
				return vim.tbl_keys(bufs)
			end
		},
	}),
	cmp.setup.cmdline('/', {
		sources = {
			{ name = 'buffer' }
		}
	})
})

require('lspconfig')['sumneko_lua'].setup {
	settings = {
		Lua = {
			diagnostics = {
        globals = {'vim'},
      },
			workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
			telemetry = {
				enable = false
			}
		}
	}
}

require('lspconfig')['jedi_language_server'].setup {
	capabilities = capabilities
}

require('lspconfig')['solargraph'].setup {
	capabilities = capabilities
}

require('lspconfig')['tsserver'].setup {
	capabilities = capabilities
}

require("cmp_nvim_ultisnips").setup{
	capabilities = capabilities
}

require('lspconfig')['elixirls'].setup{
	capabilities = capabilities;
  cmd = { "/home/leon/Programas/elixir-ls/language_server.sh" };
}
