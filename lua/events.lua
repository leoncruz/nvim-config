if vim.fn.has "nvim-0.7" then
	local create_autocmd  = vim.api.nvim_create_autocmd

	create_autocmd(
		{ "CursorHold" },
		{ pattern = "*", command = "Lspsaga show_line_diagnostics" }
	)

	create_autocmd(
		{ "VimEnter" },
		{ pattern = "*", command = "lua vim.diagnostic.config({ virtual_text = false })" }
	)

	create_autocmd({ 'BufWritePre' }, { pattern = "*.tsx,*.ts,*.jsx,*.js", command = 'EslintFixAll' })
else
	vim.cmd [[ autocmd VimEnter * :lua vim.diagnostic.config({ virtual_text = false }) ]]
	vim.cmd [[ autocmd CursorHold * :Lspsaga show_line_diagnostics ]]
	vim.cmd [[ autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll ]]
end
