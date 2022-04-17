require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Geral
	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-commentary'
	use 'vim-test/vim-test'
	use 'akinsho/flutter-tools.nvim'
	use 'mattn/emmet-vim'
	use 'jiangmiao/auto-pairs'
	use 'sheerun/vim-polyglot'
	use 'elixir-editors/vim-elixir'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }

	-- LSP
	use 'w0rp/ale'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'

	use 'tami5/lspsaga.nvim'

	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'
	use 'quangnguyen30192/cmp-nvim-ultisnips'

	-- UI
	use 'akinsho/bufferline.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'
	use 'rcarriga/nvim-notify'
	use 'lewis6991/gitsigns.nvim'
	use 'ap/vim-css-color'
	use 'morhetz/gruvbox'
	use 'goolord/alpha-nvim'
end)
