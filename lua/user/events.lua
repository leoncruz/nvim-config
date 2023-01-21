local create_autocmd  = vim.api.nvim_create_autocmd

if vim.fn.exists(':EslintFixAll') > 0 then
	create_autocmd({ 'BufWritePre' }, { pattern = "*.tsx,*.ts,*.jsx,*.js", command = 'EslintFixAll' })
end
