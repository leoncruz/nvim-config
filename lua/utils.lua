local flutter_tools = require'flutter-tools'
local telescope = require('telescope')

flutter_tools.setup {
	dev_log = {
		open_cmd = 'belowright split'
	}
}

telescope.setup {
	defaults =  {
		file_ignore_patterns = {
			'node_modules', '.elixir_ls', '_build', 'deps', '__pycache__',
			'.idea', '.dart_tool', 'build'
		}
	}
}
