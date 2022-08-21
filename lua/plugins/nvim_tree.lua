return function()
	return require('nvim-tree').setup {
		update_cwd = true,
		git = {
			ignore = false
		},
		diagnostics = {
			enable = true
		},
	}
end
