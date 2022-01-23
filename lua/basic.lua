-- Some basic configurations
local telescope = require('telescope')

vim.g.mapleader = ' '

vim.g.python3_host_prog = '~/.asdf/shims/python'

vim.o.number = true
vim.encoding = "UTF-8"
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.background = "dark"
vim.o.autoindent = true
vim.o.termguicolors = true

vim.opt.completeopt:append({ "menu", "menuone", "noselect" })

vim.cmd([[ noswapfile ]])
vim.cmd([[ colorscheme gruvbox ]])
vim.cmd([[ imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") ]])

-- vim-test configurations
vim.g['test#strategy'] = "neovim"
vim.g['test#preserve_screen'] = 1

-- blamer configurations
vim.g.blamer_enabled = 1
vim.g.blamer_delay = 500

vim.g.UltiSnipsExpandTrigger = "<C-z>"

telescope.setup {
	defaults =  {
		file_ignore_patterns = {
			'node_modules', '.elixir_ls', '_build', 'deps', '__pycache__',
			'.idea', '.dart_tool', 'build'
		}
	}
}
