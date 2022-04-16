local saga = require('lspsaga')
local lualine = require('lualine')
local nvim_tree = require('nvim-tree')
local bufferline = require('bufferline')

saga.setup{
	code_action_prompt 	= {
		enable = false
	}
}

lualine.setup({
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
})

nvim_tree.setup({
	git = {
		ignore = false
	}
})

vim.notify = require("notify")

bufferline.setup{
	options = {
		mode = "tabs",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end
	}
}

