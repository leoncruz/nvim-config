return function()
	return require('lualine').setup {
		options = {
			theme = 'gruvbox_dark'
		},
		sections = {
			lualine_c = {
				{
					'filename',
					file_status = true,
					path = 1
				}
			}
		}
	}
end
