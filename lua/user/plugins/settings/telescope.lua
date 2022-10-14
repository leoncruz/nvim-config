local ok, telescope = pcall(require, 'telescope')

if not ok then return end

telescope.setup {
	defaults = {
		file_ignore_patterns = {
			'node_modules', '.elixir_ls', '_build', 'deps', '__pycache__',
			'.idea', '.dart_tool', 'build', '.git', 'ios/', 'android/',
		}
	},
	pickers = {
		find_files = {
			hidden = true
		}
	},
	extensions = {
		workspaces = {}
	}
}

telescope.load_extension('workspaces')
