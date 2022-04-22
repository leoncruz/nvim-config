-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

-- use Lspsaga diagnostic
vim.cmd [[ autocmd CursorHold * :Lspsaga show_line_diagnostics ]]
