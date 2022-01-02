local saga = require('lspsaga')
local lualine = require('lualine')
local nvim_tree = require('nvim-tree')

saga.init_lsp_saga()

lualine.setup({
	options = {
		theme = 'gruvbox_dark'
	}
})

nvim_tree.setup({
	git = {
		ignore = false
	}
})

vim.notify = require("notify")
