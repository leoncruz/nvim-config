return function()
	return require('flutter-tools').setup {
		dev_log = {
			open_cmd = 'tabedit'
		},
		flutter_lookup_cmd = 'asdf where flutter'
	}
end
