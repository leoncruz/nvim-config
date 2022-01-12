-- disable virtual_text for lsp diagnostic
vim.diagnostic.config({
	virtual_text = false,
})

-- use Lspsaga diagnostic
vim.o.updatetime = 250
vim.cmd [[ autocmd CursorHold * :Lspsaga show_line_diagnostics ]]
