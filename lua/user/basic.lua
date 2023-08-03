-- Some basic configurations
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
vim.o.colorcolumn = "80,120"
vim.opt.cursorline = true

vim.opt.completeopt:append({ "menu", "menuone", "noselect" })

vim.cmd([[ noswapfile ]])
vim.cmd([[ colorscheme gruvbox-baby ]])

vim.cmd [[
	set autoindent
	set expandtab
	set shiftwidth=2
	set smartindent
	set softtabstop=2
	set tabstop=2
	set laststatus=3
]]

-- vim-test configurations
vim.g['test#strategy'] = "neovim"
vim.g['test#preserve_screen'] = 1

vim.cmd [[ set signcolumn=yes ]]
