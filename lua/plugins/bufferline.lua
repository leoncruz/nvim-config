return function()
	return require('bufferline').setup {
		options = {
			mode = "tabs",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level)
				local icon = level:match("error") and " " or " "
				return " " .. icon .. count
			end
		}
	}
end
