local packer = require 'packer'

require 'plugins.settings'

packer.startup {
	function(use)
		use 'wbthomason/packer.nvim'

		-- Geral
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		use 'nvim-lua/plenary.nvim'
		use 'nvim-telescope/telescope.nvim'
		use 'natecraddock/workspaces.nvim'
		use 'sheerun/vim-polyglot'
		use 'tpope/vim-surround'
		use 'tpope/vim-fugitive'
		use 'tpope/vim-commentary'
		use 'vim-test/vim-test'
		use 'akinsho/flutter-tools.nvim'
		use 'elixir-editors/vim-elixir'
		use({ 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' })
		use 'jiangmiao/auto-pairs'
		use({
			'mattn/emmet-vim',
			ft = { 'html', 'javascriptreact', 'javascript', 'typescriptreact', 'eelixir' },
			config = function()
				vim.cmd([[ imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>") ]])
			end
		})

		-- LSP
		use 'honza/vim-snippets'
		use({
			'hrsh7th/nvim-cmp',
			requires = {
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'hrsh7th/cmp-buffer' },
				{ 'hrsh7th/cmp-path' },
				{ 'hrsh7th/cmp-cmdline' },
				{ 'hrsh7th/nvim-cmp' },
				{ 'L3MON4D3/LuaSnip' },
				{ 'saadparwaiz1/cmp_luasnip' },
				{ 'rafamadriz/friendly-snippets' }
			}
		})

		use 'neovim/nvim-lspconfig'
		use 'kkharji/lspsaga.nvim'
		use({
			'w0rp/ale',
			ft = { 'python', 'ruby', 'dart', 'elixir' },
		})

		-- UI
		use 'akinsho/bufferline.nvim'
		use 'norcalli/nvim-colorizer.lua'
		use 'goolord/alpha-nvim'
		use 'kyazdani42/nvim-tree.lua'
		use 'kyazdani42/nvim-web-devicons'
		use({
			'lewis6991/gitsigns.nvim',
			config = function()
				require('gitsigns').setup {
					current_line_blame = true,
				}
			end
		})

		use 'ellisonleao/gruvbox.nvim'
		use 'nvim-lualine/lualine.nvim'
		use 'rcarriga/nvim-notify'
		use 'onsails/lspkind.nvim'
	end
}
