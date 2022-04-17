local cssls = {}
local elixirls = {}
local eslint = {
	format = true
}

local jedi_language_server = {}

local solargraph = {
	diagnostic = true
}

local sumneko_lua = {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
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

local tsserver = {}


return {
	cssls = cssls,
	elixirls = elixirls,
	eslint = eslint,
	jedi_language_server = jedi_language_server,
	solargraph = solargraph,
	sumneko_lua = sumneko_lua,
	tsserver = tsserver,
}
