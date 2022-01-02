local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
	-- Geral
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'vim-test/vim-test'
	-- Plug 'akinsho/flutter-tools.nvim'
	Plug '~/code/flutter-tools.nvim'
	Plug 'mattn/emmet-vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'sheerun/vim-polyglot'
	Plug 'elixir-editors/vim-elixir'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	-- LSP
	Plug 'w0rp/ale'
	Plug 'neovim/nvim-lspconfig'

	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-vsnip'

	Plug 'tami5/lspsaga.nvim'

	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	-- UI
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'rcarriga/nvim-notify'
	Plug 'airblade/vim-gitgutter'
	Plug 'ap/vim-css-color'
	Plug 'APZelos/blamer.nvim'
	Plug 'morhetz/gruvbox'
vim.call('plug#end')
