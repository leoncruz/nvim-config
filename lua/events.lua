-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

-- use Lspsaga diagnostic
vim.cmd [[ autocmd CursorHold * :Lspsaga show_line_diagnostics ]]

-- disable virtual_text for lsp diagnostic
vim.diagnostic.config({
	virtual_text = false,
})

vim.o.updatetime = 250
