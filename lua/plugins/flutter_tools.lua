return function()
	return require('flutter-tools').setup {
		dev_log = {
			open_cmd = 'tabedit'
		}
	}
end
