local flutter_tools = require'flutter-tools'
local telescope = require('telescope')
local cmp_nvim_ultisnips = require('cmp_nvim_ultisnips')

flutter_tools.setup {
	dev_log = {
		open_cmd = 'tabedit'
	}
}

telescope.setup {
	defaults =  {
		file_ignore_patterns = {
			'node_modules', '.elixir_ls', '_build', 'deps', '__pycache__',
			'.idea', '.dart_tool', 'build', '.git'
		}
	},

	pickers = {
		find_files = {
			hidden = true
		}
	}
}

cmp_nvim_ultisnips.setup({
	filetype_source = 'ultisnips_default'
})
