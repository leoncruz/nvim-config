if vim.fn.has "nvim-0.7" then
	local create_autocmd  = vim.api.nvim_create_autocmd

	create_autocmd({ 'BufWritePre' }, { pattern = "*.tsx,*.ts,*.jsx,*.js", command = 'EslintFixAll' })

	local path = vim.fn.stdpath('config') .. '/lua/plugins/init.lua'

	create_autocmd(
		{ 'BufWritePost' },
		{ pattern = path, command = 'source <afile> | PackerCompile' }
	)
else
	vim.cmd [[ autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll ]]
end
