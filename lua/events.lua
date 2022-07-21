local create_autocmd  = vim.api.nvim_create_autocmd

if vim.fn.has "nvim-0.7" then
	create_autocmd(
		{ "VimEnter" },
		{ pattern = "*", command = "Lspsaga show_line_diagnostics" }
	)

	create_autocmd(
		{ "VimEnter" },
		{ pattern = "*", command = "lua vim.diagnostic.config({ virtual_text = false })" }
	)
else
	vim.cmd [[ autocmd VimEnter * :lua vim.diagnostic.config({ virtual_text = false }) ]]
	vim.cmd [[ autocmd CursorHold * :Lspsaga show_line_diagnostics ]]
end
