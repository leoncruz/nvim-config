return {
	'stevearc/conform.nvim',
	config = function()
		require('conform').setup({
			formatters_by_ft = {
				ruby = { 'rubocop' },
				javascript = { 'prettier' },
				typescript = { 'prettier' },
				javascriptreact = { 'prettier' },
				typescriptreact = { 'prettier' },
			},
			format_after_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			}
		})
	end
}
