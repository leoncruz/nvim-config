vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_save = 1
vim.g.ale_ruby_rubocop_executable = 'bundle'

vim.g.ale_linters = {
	ruby = { 'rubocop' },
	python = { 'pylint' },
	elixir = { 'mix_format' },
	javascript = { 'eslint' },
	typescript = { 'eslint' },
	dart = { 'dartls' }
}

vim.g.ale_fixers = {
	['*'] = { 'remove_trailing_lines', 'trim_whitespace' },
	python = { 'isort', 'black' },
	elixir = { 'mix_format' },
	javascript = { 'eslint', 'prettier' },
	typescript = { 'eslint', 'prettier' },
	typescriptreact = { 'eslint', 'prettier' },
	dart = { 'dart-format' },
}

vim.g.ale_sign_error = ''
vim.g.ale_sign_warning = ''
