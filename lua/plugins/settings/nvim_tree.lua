local ok, nvim_tree = pcall(require, 'nvim-tree')

if not ok then return end

nvim_tree.setup {
	update_cwd = true,
	git = {
		ignore = false
	},
	diagnostics = {
		enable = true
	},
}
