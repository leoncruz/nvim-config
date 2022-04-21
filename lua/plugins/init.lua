local require_plugin = function(plugin_name)
	return require('plugins.' .. plugin_name)
end

local packer = require 'packer'

packer.startup {
	function(use)
		use 'wbthomason/packer.nvim'

		-- Geral
		use({ 'akinsho/flutter-tools.nvim', config = require_plugin('flutter_tools') })

		use 'elixir-editors/vim-elixir'

		use({ 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' })

		use 'jiangmiao/auto-pairs'

		use({ 'mattn/emmet-vim', ft = { 'html', 'javascriptreact', 'javascript', 'typescriptreact' } })

		use 'nvim-lua/plenary.nvim'

		use({ 'nvim-telescope/telescope.nvim', config = require_plugin('telescope') })

		use 'sheerun/vim-polyglot'
		use 'tpope/vim-surround'
		use 'tpope/vim-fugitive'
		use 'tpope/vim-commentary'
		use 'vim-test/vim-test'

		-- LSP
		use 'honza/vim-snippets'

		use 'hrsh7th/nvim-cmp'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'

		use 'neovim/nvim-lspconfig'

		use 'quangnguyen30192/cmp-nvim-ultisnips'
		use 'SirVer/ultisnips'

		use({ 'tami5/lspsaga.nvim', config = require_plugin('lspsaga') })

		use 'williamboman/nvim-lsp-installer'
		use 'w0rp/ale'

		-- UI
		use({ 'akinsho/bufferline.nvim', config = require_plugin('bufferline') })

		use 'ap/vim-css-color'

		use({ 'goolord/alpha-nvim', config = require_plugin('alpha') })

		use({ 'kyazdani42/nvim-tree.lua', config = require_plugin('nvim_tree') })

		use 'kyazdani42/nvim-web-devicons'

		use({
			'lewis6991/gitsigns.nvim',
			config = function()
				require('gitsigns').setup {
					current_line_blame = true,
				}
			end
		})

		use 'morhetz/gruvbox'

		use { 'nvim-lualine/lualine.nvim', config = require_plugin('lualine'), }

		use({
			'rcarriga/nvim-notify',
			config = function()
				vim.notify = require('notify')
			end
		})
	end
}
