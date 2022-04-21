return function()
	return require('telescope').setup {
		defaults = {
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
end
