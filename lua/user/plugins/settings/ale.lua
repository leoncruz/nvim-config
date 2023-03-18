vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_save = 1
vim.g.ale_echo_cursor = 0

vim.g.ale_linters = {
	python = {},
	elixir = {},
	javascript = {},
	typescript = {},
	dart = {},
	ruby = {},
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
